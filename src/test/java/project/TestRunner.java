package project;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class TestRunner
{
    @Karate.Test
    //@Test
    //Karate testAutomation()
    Karate testAutomation()
    {
         return Karate.run("automationPractice","dbConnect").relativeTo(getClass());
    }

    //Parallel Execution
    @Test
    void testParallel()
    {
        Results results = Runner.parallel(getClass(), 3, "target/surefire-reports");
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
