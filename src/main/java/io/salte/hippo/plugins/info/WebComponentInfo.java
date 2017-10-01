package io.salte.hippo.plugins.info;

import org.hippoecm.hst.core.parameters.Parameter;

public interface WebComponentInfo {
    @Parameter(name = "url", defaultValue = "https://hostname/path/filename.html", required = true, displayName = "URL")
    String getUrl();

    @Parameter(name = "elementName", defaultValue = "custom-element-name", required = true, displayName = "Element Name")
    String getElementName();
}
