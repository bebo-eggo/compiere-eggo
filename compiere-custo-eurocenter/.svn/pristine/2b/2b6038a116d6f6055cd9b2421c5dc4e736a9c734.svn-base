package com.ecenter.compiere.model;

import org.compiere.model.MUser;
import org.compiere.util.Msg;

import com.audaxis.compiere.contract.po.BasicContractPO;
import com.audaxis.compiere.contract.po.ContractPO;
import com.audaxis.compiere.eurocenter.util.EmailUtil;
import com.audaxis.compiere.util.CompiereException;

public class ContractUser extends BasicContractPO<MUser>
implements ContractPO<MUser>{

	public ContractUser(MUser po) {
		super(po);
	}

	@Override
	public String afterUpdate() {
		//if (getPO().is_new() && getPO().isEggo()){
		//	getPO().copyUser(getPO().isEggo());
		//}
		return null;
	}

	@Override
	public String beforeDelete() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String beforeUpdate() {
		MUser po = getPO();
		/*
		if(po.is_ValueChanged("Name") && po.getName() !=null && po.getName().trim().length()>0 && po.getPassword()==null){
			String nameNew = "";
			String name = po.getName().toLowerCase().trim();
			int Sbef = -1;
			if(name!=null)
			{
				String[] names = name.split("");
					
				for (int i = 0; i < names.length; i++) {
					if(i==0)
					{
						if(names[0].equals("")){
							nameNew = names[i+1].toUpperCase();
							i++;
							continue;
						}
						else
							nameNew = names[i].toUpperCase();
					}
					if(i>0)
					{
						if(names[i].equals(" ")||names[i].equals("-"))
						{
							Sbef = i;
							nameNew = nameNew+names[i];
						}
						else
						{
							if(Sbef+1 == i)
								nameNew = nameNew+names[i].toUpperCase();
							else
								nameNew = nameNew+names[i];
						}
					}
				}
				if(!nameNew.equals(name))
					po.set_ValueNoCheck("Name",nameNew);
			}
		}
		*/
		String regex = "[0-9]";
		if(po.is_ValueChanged("Phone") && po.getPhone() !=null && po.getPhone().trim().length()>0){
			String phone = po.getPhone();
			if(phone!=null && phone.length()>0)
			{
				String cleanPhone = "";
				String[] phones = phone.split("");
				for (int i = 0; i < phones.length; i++) {
					if(phones[i].matches(regex))
					{
						cleanPhone = cleanPhone+phones[i];
					}
				}
				if(!(cleanPhone.equals(phone)))
					po.set_ValueNoCheck("Phone",cleanPhone);
			}
		}
		if(po.is_ValueChanged("Phone2") && po.getPhone2() !=null && po.getPhone2().trim().length()>0){
			String phone = po.getPhone2();
			if(phone!=null && phone.length()>0)
			{
				String cleanPhone = "";
				String[] phones = phone.split("");
				for (int i = 0; i < phones.length; i++) {
					if(phones[i].matches(regex))
					{
						cleanPhone = cleanPhone+phones[i];
					}
				}
				if(!cleanPhone.equals(phone))
					po.set_ValueNoCheck("Phone2",cleanPhone);
			}
		}
		
		/*
		if(po.is_ValueChanged("Name2") && po.getName2() !=null && po.getName2().trim().length()>0){
			String name2New = "";
			String name2 = po.getName2().toLowerCase().trim();
			int Sbef = -1;
			if(name2!=null)
			{
				String[] name2s = name2.split("");
					
				for (int i = 0; i < name2s.length; i++) {
					if(i==0)
					{
						if(name2s[0].equals("")){
							name2New = name2s[i+1].toUpperCase();
							i++;
							continue;
						}else
							name2New = name2s[i].toUpperCase();
					}
					if(i>0)
					{
						if(name2s[i].equals(" ")||name2s[i].equals("-"))
						{
							Sbef = i;
							name2New = name2New+name2s[i];
						}
						else
						{
							if(Sbef+1 == i)
								name2New = name2New+name2s[i].toUpperCase();
							else
								name2New = name2New+name2s[i];
						}
					}
				}
				if(!name2New.equals(name2))
					po.set_ValueNoCheck("Name2",name2New);
			}
		}
		*/
		return null;
	}

}
