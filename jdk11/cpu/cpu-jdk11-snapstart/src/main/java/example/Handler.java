package example;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.LambdaLogger;
import com.amazonaws.services.lambda.runtime.RequestHandler;

import java.util.Map;


public class Handler implements RequestHandler<Map<String,String>, String> {

    private static final LambdaClient lambdaClient = LambdaClient.builder().build();

    @Override
    public String handleRequest(Map<String,String> event, Context context) {

        LambdaLogger logger = context.getLogger();
        logger.log("Handler invoked");

	logger.log("Started calculating nth fibonacci term")
	int fib = 0;
	fib = nthFibonacciTerm(200);
	logger.log("Finished calculating nth fibonacci term: " + fib.toString());

        return fib != 0 ? "Successful Invocation" : "Error";
    }

    public int nthFibonacciTerm(int n) {
        if (n == 1 || n == 0) {
            return n;
        }

        return nthFibonacciTerm(n-1) + nthFibonacciTerm(n-2);
    }
}
