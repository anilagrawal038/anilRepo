import linksharing.*

class BootStrap {


    def init = { servletContext ->

        LSUser u1=LSUser.findOrSaveWhere(name: 'test1',userName: 'test1',password:'guest',emailId: 'test1@intelligrape.com',userType:UserType.Simple )
        LSUser u2=LSUser.findOrSaveWhere(name: 'test2',userName: 'test2',password:'guest',emailId: 'test2@intelligrape.com',userType:UserType.Simple )
        LSUser u3=LSUser.findOrSaveWhere(name: 'test3',userName: 'test3',password:'guest',emailId: 'test3@intelligrape.com',userType:UserType.Simple )

        Date date=new Date();

        LSTopic t1=new LSTopic(topicName:'sample11',description:'sample des1',owner:u1,accessType:TopicType.Public,user:u1,dateCreated:date,lastUpdate:date)
        LSTopic t2=new LSTopic(topicName:'sample12',description:'sample des2',owner:u2,accessType:TopicType.Public,user:u2,dateCreated:date,lastUpdate:date)
        LSTopic t3=new LSTopic(topicName:'sample13',description:'sample des3',owner:u3,accessType:TopicType.Public,user:u3,dateCreated:date,lastUpdate:date)
        t1.customSave();
        t2.customSave();
        t3.customSave();


        LSRLink l1=new LSRLink(name:'Sample Link 1',description:'This is a sample Link 1',linkPath:'http://groovy.codehaus.org/User+Guide',resourceType:'Link',topic:t1,owner:u1)
        LSRDocument d1=new LSRDocument(name:'Sample Document 1',description:'This is a sample Document 1',docPath:'/home/anil/file.txt',docContent:'N/A',resourceType:'Document',topic:t2,owner:u2)
        LSResource r1=new LSResource(name:'Sample Resource 1',description:'This is a sample Resource 1',resourceType:'Resource',topic:t3,owner:u3)
        l1.customSave();
        d1.customSave();
        r1.customSave();

    }
    def destroy = {
    }
}
