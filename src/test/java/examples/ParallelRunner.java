package examples;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.junit.Test;

import static org.junit.Assert.assertTrue;

public class ParallelRunner {

    @Test
    public void testParallel() {
        Results results = Runner.path("classpath:examples/features").tags("@smoke").parallel(5);
        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
    }

}
