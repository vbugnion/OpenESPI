/*******************************************************************************
 * Copyright (c) 2011, 2012 EnergyOS.Org
 *
 * Licensed by EnergyOS.Org under one or more contributor license agreements.
 * See the NOTICE file distributed with this work for additional information
 * regarding copyright ownership.  The EnergyOS.org licenses this file
 * to you under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License.  You may obtain a copy
 * of the License at:
 *  
 *   http://www.apache.org/licenses/LICENSE-2.0
 *  
 *  Unless required by applicable law or agreed to in writing,
 *  software distributed under the License is distributed on an
 *  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 *  KIND, either express or implied.  See the License for the
 *  specific language governing permissions and limitations
 *  under the License.
 *  
 *******************************************************************************/

package org.energyos.espi.thirdparty.domain;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;

import org.energyos.espi.common.informationmodel.*;

@RooJavaBean
@RooToString
@RooEntity
public class ThirdParty implements org.energyos.espi.common.informationmodel.ThirdParty {

    @Size(min = 3, max = 30)
    private String name;

    @Size(max = 512)
    private String description;

	@Override
	public DataCustodianList _ReadDataCustodianList(
			RetailCustomerId reatilCustomerID) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean _RequestAuthorization(Authorization authorization) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean NotifyData_(BatchList batchList) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean NotifyUpdateAuthorization_(Authorization authorization) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean ProvideAuthorization(Authorization authorization) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean UpdateData_(Batch data) {
		// TODO Auto-generated method stub
		return false;
	}
}
