package com.mr.index.service;

import com.mr.shop.CommodityType;
import org.apache.solr.client.solrj.SolrServerException;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by asus on 2019/4/29.
 */

public interface IndexService {
    List<CommodityType> queryCommtype();

    Map<String,Object> solrQueryCommodity(String commTitle, Integer page, Integer size) throws IOException, SolrServerException;
}
