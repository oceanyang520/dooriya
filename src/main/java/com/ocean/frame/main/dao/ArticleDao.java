package com.ocean.frame.main.dao;

import java.util.List;

import com.ocean.frame.main.entity.Article;

public interface ArticleDao {

    public List<Article> articleList(Article article);
}
