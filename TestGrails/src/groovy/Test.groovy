/**
 * Created by anil on 9/4/14.
 */

import org.codehaus.groovy.grails.web.context.ServletContextHolder as SCH
import org.codehaus.groovy.grails.web.servlet.GrailsApplicationAttributes as GA

class Test {/*
    def ctx = SCH.servletContext.getAttribute(GA.APPLICATION_CONTEXT)
    def myService = ctx.testService

    public static void main(String[] args) {
        println myService.add(3,5)
    }
*/
}

/*
    def appCtx = ApplicationHolder.application.getMainContext()
    def myService = appCtx.getBean("testService");
    */

/*
another optional way to do the same is
import grails.util.Holders
...

def myService = Holders.grailsApplication.mainContext.getBean 'myService'
 */