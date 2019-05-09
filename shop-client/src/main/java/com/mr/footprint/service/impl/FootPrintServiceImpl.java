package com.mr.footprint.service.impl;

import com.mr.commodity.mapper.CommdMapper;
import com.mr.footprint.mapper.FootPrintMapper;
import com.mr.footprint.service.FootPrintService;
import com.mr.shop.Commodity;
import com.mr.shop.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Service;

import java.util.List;


/**
 * Created by asus on 2019/5/6.
 */
@Service
public class FootPrintServiceImpl implements FootPrintService{

    @Autowired
    private FootPrintMapper footPrintMapper;
    @Autowired
    private MongoTemplate mongoTemplate;

    @Override
    public void zujiMogo(Commodity commodity1) {
        Commodity commodity = footPrintMapper.selectByCommId(Integer.parseInt(commodity1.getCommId()));
        commodity.setUserId(1);
        System.err.println(commodity);
        Query query = new Query();
        Criteria criteria = Criteria.where("commId").is(commodity.getCommId());
        query.addCriteria(criteria);
        List<Commodity> commodities = mongoTemplate.find(query, Commodity.class);
        if(commodities==null){
            mongoTemplate.insert(commodity);
        }

    }

    @Override
    public List<Commodity> queryZuJi(Integer userId) {
        Query query = new Query();
        Criteria criteria = Criteria.where("userId").is(userId);
        query.addCriteria(criteria);
        List<Commodity> commodities = mongoTemplate.find(query, Commodity.class);
        return commodities;
    }
}
