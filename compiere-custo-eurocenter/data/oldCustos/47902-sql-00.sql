UPDATE ad_infocolumn
SET iscentrallymaintained = 'N'
WHERE ad_element_id =
  (SELECT ad_element_id FROM ad_element WHERE columnname='DiscountAmt'
  )
AND ad_infowindow_id = 111;

UPDATE ad_infocolumn_trl
SET name               = 'Escompte'
WHERE ad_infocolumn_id =
  (SELECT ad_infocolumn_id
  FROM ad_infocolumn
  WHERE ad_element_id =
    (SELECT ad_element_id FROM ad_element WHERE columnname='DiscountAmt'
    )
  AND ad_infowindow_id = 111
  )
AND ad_language='fr_FR';

UPDATE ad_infocolumn
SET iscentrallymaintained = 'N'
WHERE ad_element_id =
  (SELECT ad_element_id FROM ad_element WHERE columnname='WriteOffAmt'
  )
AND ad_infowindow_id = 111;

UPDATE ad_infocolumn_trl
SET name               = 'Ecart de paiement'
WHERE ad_infocolumn_id =
  (SELECT ad_infocolumn_id
  FROM ad_infocolumn
  WHERE ad_element_id =
    (SELECT ad_element_id FROM ad_element WHERE columnname='WriteOffAmt'
    )
  AND ad_infowindow_id = 111
  )
AND ad_language='fr_FR';