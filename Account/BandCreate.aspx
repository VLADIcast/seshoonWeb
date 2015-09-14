<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="BandCreate.aspx.vb" Inherits="Account_BandCreate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="Server">
    <section id="blocks-wrapper">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 block-header">
                    <h1>Start a Band</h1>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 block-content">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Create a band</h2>
                             <div class="form-group" style="margin-top: 30px;">
                                <div class="row">
                                    <div class="col-sm-3">Band Name</div>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="bname" id="bname" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-3"></div>
                                    <div class="col-sm-9">Click <b>"ADD MORE"</b> to add instruments.  (5 max)</div>
                                </div>
                            <div class="form-group clonedMusicianInput" id="musinput1" style="margin-top: 10px;">
                                <div class="row">
                                    <div class="col-sm-3">Instrument</div>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" name="member1" id="member1" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <input type="button" class="btn btn-secondary pull-right" style="margin-left: 10px; display: none;" id="btnDelMusician" value="REMOVE" />
                                    <input type="button" class="btn btn-secondary-green pull-right" id="btnAddMusician" value="ADD MORE" />
                                </div>
                            </div>
                            <div id="muscounter">
                            </div>
                        </div>
                        <div class="col-sm-6">
                            <h2>Add Songs</h2>
                         <div class="row" style="margin-top: 30px;">
                                <div class="col-sm-2"></div>
                                    <div class="col-sm-10">Click <b>"ADD MORE"</b> to add songs. (5 max)</div>
                                </div>
                            <div class="form-group clonedSongInput" id="input1" style="margin-top: 15px;">
                                <div class="row">
                                    <div class="col-sm-2">Title</div>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="title1" id="title1" />
                                    </div>
                                </div>
                                <div class="row" style="padding-top: 10px">
                                    <div class="col-sm-2">Artist</div>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" name="artist1" id="artist1" />
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <input type="button" class="btn btn-secondary pull-right" style="margin-left: 10px; display: none;" id="btnDelSong" value="REMOVE" />
                                    <input type="button" class="btn btn-secondary-green pull-right" id="btnAddSong" value="ADD MORE" />
                                </div>
                            </div>
                            <div id="songcounter">
                            </div>
                        </div>
                    </div>
                    <div class="row" style="margin-top: 20px;">
                        <div class="col-sm-12">
                            <asp:Button ID="btnSubmit" runat="server" Text="Submit" CssClass="btn btn-secondary" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

