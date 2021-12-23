package ebay;

import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import org.junit.BeforeClass;
import org.junit.Test;

import com.ebay.api.client.auth.oauth2.OAuth2Api;
import com.ebay.api.client.auth.oauth2.model.AccessToken;
import com.ebay.api.client.auth.oauth2.model.Environment;
import com.ebay.api.client.auth.oauth2.model.OAuthResponse;

public class ClientCredentialsTest {
    private static final List<String> SCOPE_LIST_SANDBOX = Arrays.asList(new String[]{"https://api.ebay.com/oauth/api_scope", "https://api.ebay.com/oauth/api_scope/buy.item.feed"});
    private static final List<String> SCOPE_LIST_PRODUCTION = Arrays.asList(new String[]{"https://api.ebay.com/oauth/api_scope"});
    private static final List<String> INVALID_SCOPE_LIST = Arrays.asList(new String[]{"https://api.ebay.com/oauthxxx"});
    private static final String ERROR_INVALID_SCOPE = "\"error\":\"invalid_scope\"";

    @BeforeClass
    public static void testSetup() {
        // Loading the app credentials
        CredentialLoaderTestUtil.loadAppCredentials();
    }

    @Test
    public void testClientCredentialsGrantSandbox() throws IOException {
        if(!CredentialLoaderTestUtil.isAppCredentialsLoaded){
            System.err.println("\"Please check if ebay-config.yaml is setup correctly for app credentials");
            return;
        }

        OAuth2Api oauth2Api = new OAuth2Api();
        OAuthResponse oauth2Response = oauth2Api.getApplicationToken(Environment.SANDBOX, SCOPE_LIST_SANDBOX);
        Optional<AccessToken> applicationToken = oauth2Response.getAccessToken();
        assertNotNull(applicationToken.get());
        assertNotNull(applicationToken.get().getToken());
        assertTrue(applicationToken.get().getToken().trim().length() > 0);
    }

    @Test
    public void testClientCredentialsGrantProduction() throws IOException {
        if(!CredentialLoaderTestUtil.isAppCredentialsLoaded){
            System.err.println("\"Please check if ebay-config.yaml is setup correctly for app credentials");
            return;
        }

        OAuth2Api oauth2Api = new OAuth2Api();
        //Only this scope is allowed for this app
        OAuthResponse oauth2Response = oauth2Api.getApplicationToken(Environment.PRODUCTION, SCOPE_LIST_PRODUCTION);
        Optional<AccessToken> applicationToken = oauth2Response.getAccessToken();
        assertNotNull(applicationToken.get());
        assertNotNull(applicationToken.get().getToken());
        assertTrue(applicationToken.get().getToken().trim().length() > 0);
    }

    @Test
    public void testInvalidOAuthScope() throws IOException {
        if(!CredentialLoaderTestUtil.isAppCredentialsLoaded){
            System.err.println("\"Please check if ebay-config.yaml is setup correctly for app credentials");
            return;
        }

        OAuth2Api auth2Api = new OAuth2Api();
        // Attempting with incorrect scope
        OAuthResponse oauth2Response = auth2Api.getApplicationToken(Environment.PRODUCTION, INVALID_SCOPE_LIST);
        Optional<AccessToken> applicationToken = oauth2Response.getAccessToken();
        assertFalse(applicationToken.isPresent());
        assertNotNull(oauth2Response.getErrorMessage());
        assertTrue(oauth2Response.getErrorMessage().contains(ERROR_INVALID_SCOPE));
    }
}
