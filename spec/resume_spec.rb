require 'spec_helper'

describe Resume do
  let(:resume){Resume.first}

  it 'returns an instance of resume for #first' do
    resume.should be_instance_of(Resume)
  end

  it 'responds to all the basic fields' do
    %w(title name street city state email github_link).map(&:to_sym).each do |field|
      resume.should respond_to(field)
    end
  end

  it 'returns a hash pointing to arrays for the misc_sections' do
    resume.misc_sections.should be_instance_of(Hash)
    resume.misc_sections.values.each do |val|
      val.should be_instance_of(Array)
    end
  end

  it 'returns arrays for all the array fields' do
    %w(jobs schools footer_links).map(&:to_sym).each do |field|
      resume.send(field).should be_instance_of(Array)
    end
  end
end