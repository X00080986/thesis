package example;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.LambdaLogger;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import com.amazonaws.services.lambda.runtime.events.DynamodbEvent;
import com.amazonaws.services.lambda.runtime.events.DynamodbEvent.DynamodbStreamRecord;

import java.util.ArrayList;
import java.util.List;

public class Handler implements RequestHandler<DynamodbEvent, List<String>>{

  @Override
  public List<String> handleRequest(final DynamodbEvent event, final Context context)
  {
    final LambdaLogger logger = context.getLogger();

    var operationsFound = new ArrayList<String>();

    for (final DynamodbStreamRecord record : event.getRecords()) {
      operationsFound.add(record.getEventName());
    }

    return operationsFound;
  }
}