package com.github.ltsopensource.core.logger.jcl;

import com.github.ltsopensource.core.logger.Level;
import com.github.ltsopensource.core.logger.Logger;
import com.github.ltsopensource.core.logger.LoggerAdapter;
import org.apache.commons.logging.LogFactory;

import java.io.File;

public class JclLoggerAdapter implements LoggerAdapter {

    private Level level;
    private File file;

    public Logger getLogger(String key) {
        return new JclLogger(LogFactory.getLog(key));
    }

    public Logger getLogger(Class<?> key) {
        return new JclLogger(LogFactory.getLog(key));
    }

    public Level getLevel() {
        return level;
    }

    public void setLevel(Level level) {
        this.level = level;
    }

    public File getFile() {
        return file;
    }

    public void setFile(File file) {
        this.file = file;
    }

}
