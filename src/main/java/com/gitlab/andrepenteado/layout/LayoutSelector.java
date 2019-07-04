
package com.gitlab.andrepenteado.layout;

import java.io.IOException;

import javax.servlet.annotation.WebFilter;

import org.sitemesh.DecoratorSelector;
import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;
import org.sitemesh.content.Content;
import org.sitemesh.webapp.WebAppContext;

/**
 * Regras para seleção de layouts
 * 
 * @author Andre Penteado
 * @since 22/05/2012 - 18:50:30
 */
@WebFilter("/*")
public class LayoutSelector extends ConfigurableSiteMeshFilter {

    private final String PATH_LAYOUTS = "/layouts/";

    private final String LAYOUT_DEFAULT = "default";

    private final String JSP_DEFAULT = "index";

    @Override
    protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {

        /**
         * Classe interna com a regra de seleção de skin
         * 
         * @author Andre Penteado
         * @since 22/05/2012 - 18:50:10
         */
        class SkinDecoratorSelector implements DecoratorSelector<WebAppContext> {

            public SkinDecoratorSelector(DecoratorSelector<WebAppContext> fallbackSelector) {
            }

            @Override
            public String[] selectDecoratorPaths(Content content, WebAppContext context) throws IOException {
                String[] result = new String[] { "" };

                try {
                    // Fetch <meta name=decorator> and <meta name=skin> value.
                    // The default HTML processor already extracts these into 'meta.NAME' properties.
                    String jspDecorator = content.getExtractedProperties().getChild("meta").getChild("decorator").getValue();
                    if (jspDecorator == null) {
                        jspDecorator = context.getRequest().getParameter("decorator");
                        if (jspDecorator == null)
                            jspDecorator = context.getRequest().getSession().getAttribute("decorator") != null ? context.getRequest().getSession().getAttribute("decorator").toString() : null;
                        // Coloca na sessão somente se o decorator seja setado via URL. Ex: http://localhost/index.jsp?decorator=simple
                        if (jspDecorator != null)
                            context.getRequest().getSession().setAttribute("decorator", jspDecorator);
                    }
                    if (jspDecorator == null)
                        jspDecorator = JSP_DEFAULT;

                    // Seleciona o layout via no web.xml
                    //<context-param>
                    //  <param-name>layout-default</param-name>
                    //  <param-value>ap-bootstrap4</param-value>
                    //</context-param>
                    String skinDecorator = context.getRequest().getSession().getServletContext().getInitParameter("layout-default");

                    if (skinDecorator == null)
                        skinDecorator = LAYOUT_DEFAULT;

                    // Exemplo: /layouts/default/popup.jsp
                    result = PATH_LAYOUTS.concat(skinDecorator).concat("/").concat(jspDecorator).concat(".jsp").split(",");
                }
                catch (Exception ex) {
                    ex.printStackTrace();
                }

                return result;
            }
        }

        builder.setCustomDecoratorSelector(new SkinDecoratorSelector(builder.getDecoratorSelector()));
    }
}
