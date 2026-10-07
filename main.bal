import ballerina/http;
import ballerina/log;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service / on httpDefaultListener {
    resource function get path() returns json|error {
        do {
            log:printInfo("Hello World");
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }

}

