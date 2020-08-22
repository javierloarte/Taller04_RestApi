package clienAPI;

import io.restassured.response.Response;

public interface HttpRequest {
    Response send(RequestInformation requestInformation);
}


