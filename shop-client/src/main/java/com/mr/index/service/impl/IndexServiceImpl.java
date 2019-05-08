package com.mr.index.service.impl;

import com.mr.index.mapper.IndexMapper;
import com.mr.index.service.IndexService;
import com.mr.shop.Commodity;
import com.mr.shop.CommodityType;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by asus on 2019/4/29.
 */
@Service
public class IndexServiceImpl implements IndexService{

    @Autowired
    private IndexMapper indexMapper;
    @Autowired
    private SolrClient solrClient;
    @Override
    public List<CommodityType> queryCommtype() {
        return indexMapper.queryCommtype();
    }

    @Override
    public Map<String, Object> solrQueryCommodity(String commTitle, Integer page, Integer size) throws IOException, SolrServerException {
        SolrQuery params = new SolrQuery();
       params.setQuery("comm_title:"+commTitle);
      //  params.setQuery("*:"+"*");
        params.addSort("id", SolrQuery.ORDER.desc);
        params.setStart(page);
        params.setRows(size);
        QueryResponse queryResponse = solrClient.query("solr", params);
        List<Commodity> commodityList = queryResponse.getBeans(Commodity.class);

        SolrDocumentList results = queryResponse.getResults();

        // 数量，分页用
        long total = results.getNumFound();
        Map<String, Object> map= new HashMap<>();
        map.put("count",total);
        map.put("commList",commodityList);
        return map;
    }
}
