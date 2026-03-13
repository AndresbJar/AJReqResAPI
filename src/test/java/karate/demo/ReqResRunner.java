
package karate.demo;

import com.intuit.karate.junit5.Karate;

class ReqResRunner {

    @Karate.Test
    Karate testAll() {
        return Karate.run("classpath:features/ReqRes.feature").relativeTo(getClass());
    }
}
