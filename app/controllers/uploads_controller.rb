# encoding: utf-8
require 'qq_file'

class UploadsController < InheritedResources::Base

  def create
    params[:upload] ||= {}
    params[:upload][:file] = QqFile.parse(params[:qqfile], request)
    create! do |success, failure|
      success.json { render :json => {:id => resource.id, :url => resource.file.url, :success => true}}
      failure.json { render :json => {:success => false}}
    end
  end
  
end
