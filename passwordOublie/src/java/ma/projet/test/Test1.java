/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ma.projet.test;

import java.util.Date;
import ma.projet.classes.Client;
import ma.projet.classes.User;
import ma.projet.service.ClientService;

/**
 *
 * @author ayoub mechkour
 */
public class Test1 {
    public static void main(String[] args) {
        ClientService cs=new ClientService();
        User user1=new Client("ayoub","mechkour",new Date(2002,06,13),"ayoub.mechkour2020@gmail.com","ayoub1234");
        cs.create((Client) user1);
       
        
    }
    
}
