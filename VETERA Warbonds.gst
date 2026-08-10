<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<gameSystem id="sys-11c1-b4f4-d522-4149" name="VETERA Warbonds" battleScribeVersion="2.03" revision="1" type="gameSystem" xmlns="http://www.battlescribe.net/schema/gameSystemSchema" categoriesLabel="Keywords">
  <categoryEntries>
    <categoryEntry name="Strategian" id="01e4-8246-2e95-2cdf"/>
    <categoryEntry name="Character" id="a8cf-df1e-91ac-96ec" hidden="false"/>
    <categoryEntry name="Elite" id="831c-566c-d583-3bc9" hidden="false"/>
    <categoryEntry name="Infantry" id="63d2-c93d-4a11-8ec0" hidden="false"/>
    <categoryEntry name="Vehicle" id="9b3a-017d-0e52-edc2" hidden="false"/>
    <categoryEntry name="Walker" id="cdd1-3877-ae16-2a6c" hidden="false"/>
    <categoryEntry name="Propelled" id="76a8-984e-19be-85d3" hidden="false"/>
    <categoryEntry name="Sergeant" id="57d7-c7f3-1e08-703f" hidden="false"/>
    <categoryEntry name="Grenades" id="95b4-efab-14b5-223d" hidden="false"/>
    <categoryEntry name="Configuration" id="582b-ae8c-5082-f080" hidden="false"/>
    <categoryEntry name="Hegemony" id="ca35-d578-795a-7bdf" hidden="false"/>
    <categoryEntry name="Hegemony - House Gillian" id="6440-5bbd-6a82-7856" hidden="false"/>
    <categoryEntry name="Hegemony - Blood Crests" id="c57e-7b49-8f2a-08b1" hidden="false"/>
  </categoryEntries>
  <forceEntries>
    <forceEntry name="Quick Play Force" hidden="false" id="6db5-e602-faac-ae53">
      <categoryLinks>
        <categoryLink name="Configuration" hidden="false" id="3b91-a1fd-8806-18ee" targetId="582b-ae8c-5082-f080"/>
        <categoryLink name="Character" hidden="false" id="0cb8-2326-23e7-e5c3" targetId="a8cf-df1e-91ac-96ec"/>
        <categoryLink name="Strategian" hidden="false" id="ec10-ec45-a157-8e66" targetId="01e4-8246-2e95-2cdf">
          <constraints>
            <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="d46a-216e-7189-1fac"/>
          </constraints>
        </categoryLink>
        <categoryLink name="Infantry" hidden="false" id="a28a-f73a-f428-1d39" targetId="63d2-c93d-4a11-8ec0"/>
        <categoryLink name="Vehicle" hidden="false" id="ee09-42cb-3c7b-bfc3" targetId="9b3a-017d-0e52-edc2"/>
      </categoryLinks>
      <modifiers>
        <modifier type="set" value="1000" field="a0ea-1a42-74c7-4561">
          <conditionGroups>
            <conditionGroup type="and">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="force" childId="4638-f4f3-a456-c1d0" shared="true" includeChildSelections="true" childName="1. Incursion (1000 point limit)"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="set" value="2000" field="a0ea-1a42-74c7-4561">
          <conditionGroups>
            <conditionGroup type="and">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="force" childId="104e-2b88-f913-ee16" shared="true" includeChildSelections="true" childName="2. Strike Force (2000 point limit)"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="set" value="3000" field="a0ea-1a42-74c7-4561">
          <conditionGroups>
            <conditionGroup type="and">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="force" childId="8223-bbee-70bf-790c" shared="true" includeChildSelections="true" childName="3. Onslaught (3000 point limit)"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="set" value="-1" field="a0ea-1a42-74c7-4561">
          <conditionGroups>
            <conditionGroup type="and">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="force" childId="b6f8-ba70-88f9-4359" shared="true" includeChildSelections="true" childName="4. Remove Limit (For Custom Play)"/>
                <condition type="lessThan" value="1" field="selections" scope="force" childId="6883-c6c7-440a-a60a" shared="true" includeChildSelections="true" childName="Override Point Limit? (req. Remove Limit)"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="set" value="0" field="a0ea-1a42-74c7-4561">
          <conditionGroups>
            <conditionGroup type="and">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="force" childId="b6f8-ba70-88f9-4359" shared="true" includeChildSelections="true" childName="4. Remove Limit (For Custom Play)"/>
                <condition type="atLeast" value="1" field="selections" scope="force" childId="6883-c6c7-440a-a60a" shared="true" includeChildSelections="true" childName="Override Point Limit? (req. Remove Limit)"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
        <modifier type="increment" value="250" field="a0ea-1a42-74c7-4561">
          <repeats>
            <repeat value="250" repeats="1" field="selections" scope="force" childId="3dd5-f427-5116-a246" shared="true" roundUp="false" includeChildSelections="true" childName="Custom Point Limit"/>
          </repeats>
          <conditionGroups>
            <conditionGroup type="and">
              <conditions>
                <condition type="atLeast" value="1" field="selections" scope="force" childId="6883-c6c7-440a-a60a" shared="true" includeChildSelections="true" childName="Override Point Limit? (req. Remove Limit)"/>
                <condition type="atLeast" value="1" field="selections" scope="force" childId="b6f8-ba70-88f9-4359" shared="true" includeChildSelections="true" childName="4. Remove Limit (For Custom Play)"/>
                <condition type="atLeast" value="500" field="selections" scope="force" childId="3dd5-f427-5116-a246" shared="true" includeChildSelections="true" childName="Custom Point Limit"/>
              </conditions>
            </conditionGroup>
          </conditionGroups>
        </modifier>
      </modifiers>
      <constraints>
        <constraint type="max" value="0" field="0d54-ba68-a12e-4d2a" scope="parent" shared="true" id="a0ea-1a42-74c7-4561" includeChildSelections="true"/>
      </constraints>
    </forceEntry>
    <forceEntry name="Campaign Force" id="bf88-2af3-8b87-cb16" hidden="false"/>
  </forceEntries>
  <costTypes>
    <costType name="pts" id="0d54-ba68-a12e-4d2a" defaultCostLimit="-1" hidden="true">
      <modifiers>
        <modifier type="set" value="false" field="hidden"/>
      </modifiers>
    </costType>
  </costTypes>
  <profileTypes>
    <profileType name="Abilities" id="7c1a-6666-91ad-1439" hidden="false" kind="ability">
      <characteristicTypes>
        <characteristicType name="Description" id="1a74-59f3-85ab-ecb7" kind="longText" defaultValue="Text"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Ranged Weapon" id="0b00-c588-d8e3-fd9b" hidden="false">
      <characteristicTypes>
        <characteristicType name="Range" id="735b-d1ce-b6ea-55e6" kind="annotation" defaultValue="12&quot;"/>
        <characteristicType name="A" id="b9f5-d618-08d7-cb66" kind="annotation" defaultValue="1"/>
        <characteristicType name="HS" id="014c-9ce7-ab96-6dc3" defaultValue="4+" kind="annotation"/>
        <characteristicType name="S" id="0890-57f6-b39c-3afb" kind="annotation" defaultValue="3"/>
        <characteristicType name="AP" id="8faf-68ec-79c1-1e74" kind="annotation" defaultValue="-1"/>
        <characteristicType name="D" id="ba91-9e15-d0be-2790" kind="annotation" defaultValue="1"/>
        <characteristicType name="Keywords" id="05f3-68bd-4eee-3fa7" kind="annotation"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Melee Weapon" id="06b3-7cc1-54e3-c474" hidden="false">
      <characteristicTypes>
        <characteristicType name="Range" id="4bc4-c188-45f3-21c9" kind="annotation" defaultValue="Melee"/>
        <characteristicType name="A" id="b55f-70f9-9de2-d330" kind="annotation" defaultValue="1"/>
        <characteristicType name="HS" id="03d8-38a9-d18d-e47a" defaultValue="4+" kind="annotation"/>
        <characteristicType name="S" id="a8ee-b244-2d28-0003" kind="annotation" defaultValue="3"/>
        <characteristicType name="AP" id="ddb3-3abf-8f2a-c8eb" kind="annotation" defaultValue="-1"/>
        <characteristicType name="D" id="dd29-6916-bce2-1699" kind="annotation" defaultValue="1"/>
        <characteristicType name="Keywords" id="ec9c-eed4-21dc-53e8" kind="annotation"/>
      </characteristicTypes>
    </profileType>
    <profileType name="Unit" id="c6d9-c97b-2475-295d" hidden="false">
      <characteristicTypes>
        <characteristicType name="M" id="5d73-86b8-472a-4a80" kind="annotation" defaultValue="6&quot;"/>
        <characteristicType name="T" id="83b7-1fb0-c002-3f15" defaultValue="1"/>
        <characteristicType name="Sv" id="f255-ffcd-b90c-ce96" defaultValue="4+" kind="annotation"/>
        <characteristicType name="W" id="aecb-823f-0649-9ff5" kind="annotation" defaultValue="1"/>
        <characteristicType name="I" id="699e-2276-91ee-895a" kind="annotation" defaultValue="7+"/>
        <characteristicType name="OC" id="a953-6bf3-4f33-c691" kind="annotation" defaultValue="1"/>
        <characteristicType name="InSv" id="fc26-376c-f2b5-d671" kind="annotation" defaultValue="6+"/>
      </characteristicTypes>
    </profileType>
  </profileTypes>
  <sharedRules>
    <rule name="Infiltrators" id="8858-431b-2633-d13c" hidden="false">
      <description>During deployment phase, this unit may be deployed anywhere along the battlefield, so long as it remains 9&quot; from any enemy unit or the enemy&apos;s deployment zone.</description>
    </rule>
    <rule name="Entropic" id="b92c-c078-be0f-339d" hidden="false">
      <description>When a weapon with this keywords scores a Critical Hit, add x to that attack&apos;s damage.</description>
    </rule>
    <rule name="Pistol" id="481a-4223-e899-bb9c" hidden="false">
      <description>Models with a ranged weapon with this keyword may shoot this weapon while in engagement range.</description>
    </rule>
    <rule name="Devastating Wounds" id="8cb0-db86-1708-5fce" hidden="false">
      <description>When a weapon with this keyword scores a Critical Wound, the enemy cannot make a save against the attack.</description>
    </rule>
    <rule name="Lethal Hits" id="8f8e-b5ec-c93c-4f49" hidden="false">
      <description>When a weapon with this keyword scores a Critical Hit, it automatically wounds the target.</description>
    </rule>
    <rule name="Sustained Hits" id="e7ee-9e5f-f027-7d14" hidden="false">
      <description>Weapons with this modifier score x additional hits on a Critical Hit.</description>
    </rule>
    <rule name="Feel no Pain" id="0618-1f03-ad28-662f" hidden="false">
      <description>When taking damage, for each instance of damage taken, roll a d6, for each die value equaling or surpassing x, that damage is negated.</description>
    </rule>
    <rule name="Anti-" id="b528-2551-ddcd-aa33" hidden="false">
      <description>Weapons with this keyword score a Critical Wound on a roll of x or higher when attacking a target matching the listed tag.</description>
    </rule>
    <rule name="Torrent" id="73cf-a385-c74c-5de0" hidden="false">
      <description>Weapons with this keyword ignore cover and automatically hit the target.</description>
    </rule>
    <rule name="Heavy" id="0595-a031-7886-f8bf" hidden="false">
      <description>Weapons with this keyword get a +1 to HS if the bearer has not moved this turn.</description>
    </rule>
    <rule name="Rapid Fire" id="54dd-2903-9eb0-add4" hidden="false">
      <description>When a weapon with this keyword shoots at a target within half of its range, this weapon may add x to its Attack stat.</description>
    </rule>
    <rule name="Scouts" id="88f6-7b65-8730-5a7b" hidden="false">
      <description>This ability always takes the form **Scouts X&quot;**. In the Resolve Pre-battle Abilities step, if every model in a unit has this ability, you can do one of the following: 
- If that unit is in **strategic reserves**, you can set up that unit anywhere that is wholly within your deployment zone. 
- If that unit is wholly within your deployment zone, it can make a **scout move** (see below). 
- If that unit is embarked within a **DEDICATED TRANSPORT** that is wholly within your deployment zone, and if every model embarked within that **DEDICATED TRANSPORT** has the Scouts ability, that **DEDICATED TRANSPORT** can make a **scout move**.</description>
    </rule>
    <rule name="Fights First" id="a8da-7357-5abe-d9c1" hidden="false">
      <description>This unit may fight first when charged at.</description>
    </rule>
    <rule name="Hazardous" id="91d0-0974-9655-baed" hidden="false">
      <description>After firing a weapon with this modifier, roll a D6, taking 1D3 mortal wounds on a failure.</description>
    </rule>
    <rule name="Precision" id="6e10-a7c4-f74d-a040" hidden="false">
      <description>Weapons with this keyword may choose to specifically target a Strategian or Character, even if they have bodyguards.</description>
    </rule>
    <rule name="Deadly Demise" id="6466-c9af-0300-d4d0" hidden="false">
      <description>On death, roll a D6, on a 1, this model explodes, dealing x mortal wounds to units within 6&quot;.</description>
    </rule>
    <rule name="Blast" id="0f53-a50e-6b5a-242b" hidden="false">
      <description>When a weapon with this keyword fires, its damage is dealt as Mortal wounds to the targeted unit.</description>
    </rule>
    <rule name="Indirect Fire" id="b400-a847-1781-cf52" hidden="false">
      <description>When firing this weapon, it may target units that are not hidden, but not in the attacking model&apos;s line of sight.</description>
    </rule>
    <rule name="Assault" id="a461-68fd-cc5c-0411" hidden="false">
      <description>Weapons with this keyword may be used on the same turn as the bearing unit has advanced.</description>
    </rule>
    <rule name="Ignores Cover" id="fef4-8f7b-b2ff-b717" hidden="false">
      <description>Weapons with this keyword may ignore negative shooting traits of cover.</description>
    </rule>
    <rule name="Hidden" id="0871-2ad7-df2e-3a86" hidden="false">
      <description>Units with this keyword are considered hidden and cannot be targeted by enemy units outside of detection range.</description>
    </rule>
    <rule name="Lone Operative" id="ef5c-dd85-1105-dd16" hidden="false">
      <description>While this model is not leading a unit, enemy units more than 12&quot; away cannot target it.</description>
    </rule>
    <rule name="Stealth" id="7066-41a2-626f-8c70" hidden="false">
      <description>Units with this keyword gain the benefit of cover when targeted by enemy units.</description>
    </rule>
    <rule name="One Shot" id="04e1-477a-f1f1-8933" hidden="false">
      <description>Weapons with this keyword may only be used once in a battle.</description>
    </rule>
    <rule name="Leader" id="c6c5-1002-6830-b7e8" hidden="false">
      <description>While a Bodyguard unit contains a Leader, it is known as an Attached unit and, with the exception of rules that are triggered when units are destroyed (pg 12), it is treated as a single unit for all rules purposes. Each time an attack targets an Attached unit, until the attacking unit has resolved all of its attacks, you must use the Toughness characteristic of the Bodyguard models in that unit, even if a Leader in that unit has a different Toughness characteristic. Each time an attack successfully wounds an Attached unit, that attack cannot be allocated to a Strategian model in that unit, even if that Strategian model has lost one or more wounds or has already had attacks allocated to it this phase. As soon as the last Bodyguard model in an Attached unit has been destroyed, any attacks made against that unit that have yet to be allocated can then be allocated to Strategian models in that unit.


Each time the last model in a Bodyguard unit is destroyed, each STRATEGIAN unit that is part of that Attached unit becomes a separate unit, with its original Starting Strength. If this happens as the result of an attack, they become separate units after the attacking unit has resolved all of its attacks. 


Each time the last model in a STRATEGIAN unit that is attached to a Bodyguard unit is destroyed and there is not another STRATEGIAN unit attached, that Attached unit’s Bodyguard unit becomes a separate unit, with its original Starting Strength. If this happens as the result of an attack, they become separate units after the attacking unit has resolved all of its attacks. 


Each time a unit that is part of an Attached unit is destroyed, it does not have the keywords of any other units that make up that Attached unit (unless it has those keywords on its own datasheet) for the purposes of any rules that would be triggered when that unit is destroyed.</description>
    </rule>
  </sharedRules>
  <sharedSelectionEntries>
    <selectionEntry type="upgrade" import="true" name="Battle Size" hidden="false" id="25d5-0cb2-6a68-d314">
      <selectionEntryGroups>
        <selectionEntryGroup name="Battle Size" id="071b-3fbd-6d66-26d3" hidden="false" defaultSelectionEntryId="none">
          <selectionEntries>
            <selectionEntry type="upgrade" import="true" name="1. Incursion (1000 point limit)" hidden="false" id="4638-f4f3-a456-c1d0">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="b594-3d74-8beb-872b"/>
              </constraints>
            </selectionEntry>
            <selectionEntry type="upgrade" import="true" name="2. Strike Force (2000 point limit)" hidden="false" id="104e-2b88-f913-ee16">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="f20e-ab7e-2284-701c"/>
              </constraints>
            </selectionEntry>
            <selectionEntry type="upgrade" import="true" name="3. Onslaught (3000 point limit)" hidden="false" id="8223-bbee-70bf-790c">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="972e-7bb8-2e83-5682"/>
              </constraints>
            </selectionEntry>
            <selectionEntry type="upgrade" import="true" name="4. Remove Limit (For Custom Play)" hidden="false" id="b6f8-ba70-88f9-4359">
              <constraints>
                <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="d88b-9f12-382e-c197"/>
              </constraints>
            </selectionEntry>
          </selectionEntries>
          <constraints>
            <constraint type="min" value="1" field="selections" scope="parent" shared="true" id="7d62-4330-76fe-dc91"/>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="3141-fdee-beb8-0667"/>
          </constraints>
        </selectionEntryGroup>
      </selectionEntryGroups>
      <constraints>
        <constraint type="max" value="1" field="selections" scope="roster" shared="true" id="c2f4-fda9-7f42-0a1f" includeChildSelections="true" includeChildForces="true"/>
        <constraint type="min" value="1" field="selections" scope="roster" shared="true" id="6c61-bb68-e4f7-ff27" includeChildSelections="true" includeChildForces="true"/>
      </constraints>
      <selectionEntries>
        <selectionEntry type="upgrade" import="true" name="Override Point Limit? (req. Remove Limit)" hidden="false" id="6883-c6c7-440a-a60a">
          <constraints>
            <constraint type="max" value="1" field="selections" scope="parent" shared="true" id="8e5f-b601-11d9-37d0"/>
          </constraints>
          <selectionEntries>
            <selectionEntry type="upgrade" import="true" name="Custom Point Limit" hidden="false" id="3dd5-f427-5116-a246" step="250">
              <constraints>
                <constraint type="min" value="500" field="selections" scope="parent" shared="true" id="cea8-16ca-ab7f-d6eb"/>
              </constraints>
            </selectionEntry>
          </selectionEntries>
        </selectionEntry>
      </selectionEntries>
      <categoryLinks>
        <categoryLink targetId="582b-ae8c-5082-f080" id="4e45-06a3-9ffc-344b" primary="true" name="Configuration"/>
      </categoryLinks>
    </selectionEntry>
    <selectionEntry type="upgrade" import="true" name="Overlord" hidden="false" id="1be5-6b18-a389-e8bc">
      <constraints>
        <constraint type="min" value="1" field="selections" scope="force" shared="true" id="9e67-d6ec-708a-c1d0-min" includeChildSelections="true"/>
        <constraint type="max" value="1" field="selections" scope="force" shared="true" id="9e67-d6ec-708a-c1d0-max" includeChildSelections="true"/>
      </constraints>
    </selectionEntry>
  </sharedSelectionEntries>
  <entryLinks>
    <entryLink import="true" name="Battle Size" hidden="false" id="4ae2-437f-d580-fbee" targetId="25d5-0cb2-6a68-d314" type="selectionEntry"/>
  </entryLinks>
  <sharedProfiles>
    <profile name="Scout 6&quot;" typeId="7c1a-6666-91ad-1439" typeName="Abilities" hidden="false" id="b838-cc19-c7e0-abb4">
      <characteristics>
        <characteristic name="Description" typeId="1a74-59f3-85ab-ecb7"/>
      </characteristics>
    </profile>
    <profile name="Self Repair" typeId="7c1a-6666-91ad-1439" typeName="Abilities" hidden="false" id="1e2b-d286-7931-d8e9">
      <characteristics>
        <characteristic name="Description" typeId="1a74-59f3-85ab-ecb7">When a model has Self Repair (x), at the beginning of every command phase, this model regenerates x wounds.</characteristic>
      </characteristics>
    </profile>
  </sharedProfiles>
  <sharedInfoGroups>
    <infoGroup name="Leader" id="87c3-a82b-7962-7bdd" hidden="false">
      <infoLinks>
        <infoLink name="Leader" id="22fd-0e9d-3aa3-158d" hidden="false" type="rule" targetId="c6c5-1002-6830-b7e8"/>
      </infoLinks>
    </infoGroup>
  </sharedInfoGroups>
</gameSystem>
