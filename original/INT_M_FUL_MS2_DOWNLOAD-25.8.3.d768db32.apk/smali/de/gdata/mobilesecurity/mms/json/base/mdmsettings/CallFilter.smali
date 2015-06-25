.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Incoming:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;

.field private Outgoing:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;

.field private ProfileId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIncoming()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->Incoming:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;

    return-object v0
.end method

.method public getOutgoing()Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->Outgoing:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;

    return-object v0
.end method

.method public getProfileId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->ProfileId:Ljava/lang/Integer;

    return-object v0
.end method

.method public setIncoming(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->Incoming:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;

    .line 23
    return-void
.end method

.method public setOutgoing(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->Outgoing:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;

    .line 36
    return-void
.end method

.method public setProfileId(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->ProfileId:Ljava/lang/Integer;

    .line 10
    return-void
.end method

.method public withIncoming(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->Incoming:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Incoming;

    .line 31
    return-object p0
.end method

.method public withOutgoing(Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->Outgoing:Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/callfilter/Outgoing;

    .line 44
    return-object p0
.end method

.method public withProfileId(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/CallFilter;->ProfileId:Ljava/lang/Integer;

    .line 18
    return-object p0
.end method
