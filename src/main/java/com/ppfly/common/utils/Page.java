package com.ppfly.common.utils;

import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

/**
 * Page对象 充血模型、支持泛型T
 */
@Data
@NoArgsConstructor
public class Page<T> implements Serializable {

    private int currentPage;//当前页码
    private int pages;//总页数
    private int pageSize;//每页大小(最后页的实际大小可能于此不同，需要通过results获取)
    private int totalSize;//总条目数
    private List results;//数据集

    /**
     * 构造函数
     *
     * @param currentPage
     * @param pageSize
     */
    public Page(int currentPage, int pageSize) {
        this.currentPage = currentPage;
        this.pageSize = pageSize;
    }

    /**
     * 通过计算获得总页数的构造函数
     *
     * @param totalSize   总条目数
     * @param pageSize    每页大小
     * @param currentPage 当前页码
     */
    public Page(int totalSize, int pageSize, int currentPage) {
        int pages = totalSize / pageSize + ((totalSize % pageSize) > 0 ? 1 : 0);
        if (currentPage < 1) {
            currentPage = 1;
        }
        if (currentPage > pages) {
            if (pages == 0) {
                currentPage = 1;
            } else {
                currentPage = pages;
            }
        }
        this.currentPage = currentPage;
        this.pageSize = pageSize;
        this.pages = pages;
        this.totalSize = totalSize;
    }

    /**
     * 全参？构造函数
     *
     * @param currentPage
     * @param pageSize
     * @param pages
     * @param results
     * @param totalSize
     */
    public Page(int currentPage, int pageSize, int pages, List results, int totalSize) {
        this.currentPage = currentPage;
        this.pageSize = pageSize;
        this.pages = pages;
        this.results = results;
        this.totalSize = totalSize;
    }

    /**
     * 从list中取得page
     *
     * @param data     所有记录集合
     * @param curPage  当前页
     * @param pageSize 每页数量
     * @return page todo
     */
    public static Page parseList(List data, int curPage, int pageSize) {
        Page page = new Page();

        page.setPageSize(pageSize);//设置页大小

        int size = data.size();
        page.setTotalSize(size);

        int pages = size / pageSize;

        if ((size % pageSize) != 0) {
            pages++;
        }

        page.setPages(pages);//得到总页数

        if (curPage > pages)
            curPage = pages;
        if (curPage < 1)
            curPage = 1;
        page.setCurrentPage(curPage);//修正当前页

        int start = pageSize * (curPage - 1);
        int stop = curPage * pageSize;

        if (stop > size) {
            stop = size;//修正末页
        }

        page.setResults(data.subList(start, stop));//填充页记录

        return page;
    }

    /**
     * 是否首页
     *
     * @return
     */
    public boolean isFirstPage() {
        return currentPage == 1;
    }

    /**
     * 是否尾页
     *
     * @return
     */
    public boolean isLastPage() {
        return currentPage >= pages;
    }

    /**
     * 是否有下一页
     *
     * @return
     */
    public boolean hasNextPage() {
        return currentPage < pages;
    }

    /**
     * 是否有上一页
     *
     * @return
     */
    public boolean hasPreviousPage() {
        return currentPage > 1;
    }
}
