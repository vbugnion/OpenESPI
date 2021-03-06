// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.energyos.espi.thirdparty.domain;

import org.energyos.espi.thirdparty.domain.DataCustodianDataOnDemand;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

privileged aspect DataCustodianIntegrationTest_Roo_IntegrationTest {
    
    declare @type: DataCustodianIntegrationTest: @RunWith(SpringJUnit4ClassRunner.class);
    
    declare @type: DataCustodianIntegrationTest: @ContextConfiguration(locations = "classpath:/META-INF/spring/applicationContext.xml");
    
    declare @type: DataCustodianIntegrationTest: @Transactional;
    
    @Autowired
    private DataCustodianDataOnDemand DataCustodianIntegrationTest.dod;
    
    @Test
    public void DataCustodianIntegrationTest.testCountDataCustodians() {
        org.junit.Assert.assertNotNull("Data on demand for 'DataCustodian' failed to initialize correctly", dod.getRandomDataCustodian());
        long count = org.energyos.espi.thirdparty.domain.DataCustodian.countDataCustodians();
        org.junit.Assert.assertTrue("Counter for 'DataCustodian' incorrectly reported there were no entries", count > 0);
    }
    
    @Test
    public void DataCustodianIntegrationTest.testFindDataCustodian() {
        org.energyos.espi.thirdparty.domain.DataCustodian obj = dod.getRandomDataCustodian();
        org.junit.Assert.assertNotNull("Data on demand for 'DataCustodian' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'DataCustodian' failed to provide an identifier", id);
        obj = org.energyos.espi.thirdparty.domain.DataCustodian.findDataCustodian(id);
        org.junit.Assert.assertNotNull("Find method for 'DataCustodian' illegally returned null for id '" + id + "'", obj);
        org.junit.Assert.assertEquals("Find method for 'DataCustodian' returned the incorrect identifier", id, obj.getId());
    }
    
    @Test
    public void DataCustodianIntegrationTest.testFindAllDataCustodians() {
        org.junit.Assert.assertNotNull("Data on demand for 'DataCustodian' failed to initialize correctly", dod.getRandomDataCustodian());
        long count = org.energyos.espi.thirdparty.domain.DataCustodian.countDataCustodians();
        org.junit.Assert.assertTrue("Too expensive to perform a find all test for 'DataCustodian', as there are " + count + " entries; set the findAllMaximum to exceed this value or set findAll=false on the integration test annotation to disable the test", count < 250);
        java.util.List<org.energyos.espi.thirdparty.domain.DataCustodian> result = org.energyos.espi.thirdparty.domain.DataCustodian.findAllDataCustodians();
        org.junit.Assert.assertNotNull("Find all method for 'DataCustodian' illegally returned null", result);
        org.junit.Assert.assertTrue("Find all method for 'DataCustodian' failed to return any data", result.size() > 0);
    }
    
    @Test
    public void DataCustodianIntegrationTest.testFindDataCustodianEntries() {
        org.junit.Assert.assertNotNull("Data on demand for 'DataCustodian' failed to initialize correctly", dod.getRandomDataCustodian());
        long count = org.energyos.espi.thirdparty.domain.DataCustodian.countDataCustodians();
        if (count > 20) count = 20;
        java.util.List<org.energyos.espi.thirdparty.domain.DataCustodian> result = org.energyos.espi.thirdparty.domain.DataCustodian.findDataCustodianEntries(0, (int) count);
        org.junit.Assert.assertNotNull("Find entries method for 'DataCustodian' illegally returned null", result);
        org.junit.Assert.assertEquals("Find entries method for 'DataCustodian' returned an incorrect number of entries", count, result.size());
    }
    
    @Test
    public void DataCustodianIntegrationTest.testFlush() {
        org.energyos.espi.thirdparty.domain.DataCustodian obj = dod.getRandomDataCustodian();
        org.junit.Assert.assertNotNull("Data on demand for 'DataCustodian' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'DataCustodian' failed to provide an identifier", id);
        obj = org.energyos.espi.thirdparty.domain.DataCustodian.findDataCustodian(id);
        org.junit.Assert.assertNotNull("Find method for 'DataCustodian' illegally returned null for id '" + id + "'", obj);
        boolean modified =  dod.modifyDataCustodian(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        obj.flush();
        org.junit.Assert.assertTrue("Version for 'DataCustodian' failed to increment on flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DataCustodianIntegrationTest.testMerge() {
        org.energyos.espi.thirdparty.domain.DataCustodian obj = dod.getRandomDataCustodian();
        org.junit.Assert.assertNotNull("Data on demand for 'DataCustodian' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'DataCustodian' failed to provide an identifier", id);
        obj = org.energyos.espi.thirdparty.domain.DataCustodian.findDataCustodian(id);
        boolean modified =  dod.modifyDataCustodian(obj);
        java.lang.Integer currentVersion = obj.getVersion();
        org.energyos.espi.thirdparty.domain.DataCustodian merged =  obj.merge();
        obj.flush();
        org.junit.Assert.assertEquals("Identifier of merged object not the same as identifier of original object", merged.getId(), id);
        org.junit.Assert.assertTrue("Version for 'DataCustodian' failed to increment on merge and flush directive", (currentVersion != null && obj.getVersion() > currentVersion) || !modified);
    }
    
    @Test
    public void DataCustodianIntegrationTest.testPersist() {
        org.junit.Assert.assertNotNull("Data on demand for 'DataCustodian' failed to initialize correctly", dod.getRandomDataCustodian());
        org.energyos.espi.thirdparty.domain.DataCustodian obj = dod.getNewTransientDataCustodian(Integer.MAX_VALUE);
        org.junit.Assert.assertNotNull("Data on demand for 'DataCustodian' failed to provide a new transient entity", obj);
        org.junit.Assert.assertNull("Expected 'DataCustodian' identifier to be null", obj.getId());
        obj.persist();
        obj.flush();
        org.junit.Assert.assertNotNull("Expected 'DataCustodian' identifier to no longer be null", obj.getId());
    }
    
    @Test
    public void DataCustodianIntegrationTest.testRemove() {
        org.energyos.espi.thirdparty.domain.DataCustodian obj = dod.getRandomDataCustodian();
        org.junit.Assert.assertNotNull("Data on demand for 'DataCustodian' failed to initialize correctly", obj);
        java.lang.Long id = obj.getId();
        org.junit.Assert.assertNotNull("Data on demand for 'DataCustodian' failed to provide an identifier", id);
        obj = org.energyos.espi.thirdparty.domain.DataCustodian.findDataCustodian(id);
        obj.remove();
        obj.flush();
        org.junit.Assert.assertNull("Failed to remove 'DataCustodian' with identifier '" + id + "'", org.energyos.espi.thirdparty.domain.DataCustodian.findDataCustodian(id));
    }
    
}
