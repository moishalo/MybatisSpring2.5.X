package org.mybatis.spring.test.mapper;

import org.mybatis.spring.test.model.Sequence;

public interface SequenceMapper {

  Sequence getSequence(Sequence sequence);
  void updateSequence(Sequence sequence);
}
