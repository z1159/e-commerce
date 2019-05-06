package com.mr.index.controller;

import com.mr.index.service.IndexService;
import com.mr.shop.Commodity;
import com.mr.shop.CommodityType;
import org.apache.solr.client.solrj.SolrClient;
import org.apache.solr.client.solrj.SolrQuery;
import org.apache.solr.client.solrj.SolrServerException;
import org.apache.solr.client.solrj.response.QueryResponse;
import org.apache.solr.common.SolrDocumentList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by asus on 2019/4/29.
 */
@RestController
public class IndexController {

    @Autowired
    private IndexService indexService;


    @GetMapping("queryCommtype")
    public List<CommodityType> queryCommtype() {
        return indexService.queryCommtype();
    }


    @GetMapping("solrQueryCommodity/{commTitle}/{page}/{size}")
    public Map<String, Object> solrQueryCommodity(@PathVariable String commTitle, @PathVariable Integer page, @PathVariable Integer size) throws IOException, SolrServerException {
          return   indexService.solrQueryCommodity(commTitle,page,size);

    }

}
