package thoth.spring.project.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import thoth.spring.project.dao.NoticeDAO;
import thoth.spring.project.vo.Notice;

import java.util.List;

@Service("nsrv")
public class NoticeServiceImpl implements NoticeService{

    @Autowired
    private NoticeDAO ndao;

    @Override
    public List<Notice> readBoard(String cp) {
        int snum = (Integer.parseInt(cp) - 1) * 10;
        return ndao.selectBoard(snum);
    }

    @Override
    public Notice readOneBoard(String bdno) {
        return ndao.selectOneBoard(bdno);
    }

    @Override
    public boolean newBoard(Notice bd) {
        boolean isInserted = false;
        if (ndao.insertBoard(bd) > 0) isInserted = true;
        return isInserted;
    }

    @Override
    public boolean updateBoard(Notice bd) {
        boolean isUpdateed = false;
        if (ndao.updateBoard(bd) > 0) isUpdateed = true;
        return isUpdateed;
    }

    @Override
    public boolean deleteBoard(Notice bdno) {
        boolean isDeleteed = false;
        if (ndao.deleteBoard(bdno) > 0) isDeleteed = true;
        return isDeleteed;
    }

}
