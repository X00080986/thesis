package example;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.LambdaLogger;
import com.amazonaws.services.lambda.runtime.RequestHandler;

import java.util.Map;


public class Handler implements RequestHandler<Map<String,String>, String> {

    @Override
    public String handleRequest(final Map<String,String> event, final Context context) {

        final LambdaLogger logger = context.getLogger();
        logger.log("Handler invoked");

	logger.log("Started calculating nth fibonacci term");
	int fib = 0;
	fib = nthFibonacciTerm(200);
	logger.log("Finished calculating nth fibonacci term: " + Integer.toString(fib));

        return fib != 0 ? "Successful Invocation" : "Error";
    }

    public int nthFibonacciTerm(final int n) {
        if (n == 1 || n == 0) {
            return n;
        }

        return nthFibonacciTerm(n-1) + nthFibonacciTerm(n-2);
    }
}
