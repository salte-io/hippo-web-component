package io.salte.hippo.plugins;

import org.hippoecm.hst.core.component.HstRequest;
import org.hippoecm.hst.core.component.HstResponse;
import org.onehippo.cms7.essentials.components.CommonComponent;
import org.hippoecm.hst.core.parameters.ParametersInfo;
import io.salte.hippo.plugins.info.WebComponentInfo;

@ParametersInfo(type = WebComponentInfo.class)
public class WebComponent extends CommonComponent {

    @Override
    public void doBeforeRender(final HstRequest request, final HstResponse response) {
        super.doBeforeRender(request, response);
        final WebComponentInfo paramInfo = getComponentParametersInfo(request);
        request.setAttribute(REQUEST_ATTR_PARAM_INFO, paramInfo);
    }
}
