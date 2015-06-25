.class public Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private EngineDate:Ljava/util/Date;

.field private EngineType:Ljava/lang/Integer;

.field private EngineVersion:Ljava/lang/String;

.field private ProgramVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getEngineDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->EngineDate:Ljava/util/Date;

    return-object v0
.end method

.method public getEngineType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->EngineType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getEngineVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->EngineVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->ProgramVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setEngineDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->EngineDate:Ljava/util/Date;

    .line 56
    return-void
.end method

.method public setEngineType(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->EngineType:Ljava/lang/Integer;

    .line 30
    return-void
.end method

.method public setEngineVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->EngineVersion:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setProgramVersion(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->ProgramVersion:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public withEngineDate(Ljava/util/Date;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->EngineDate:Ljava/util/Date;

    .line 64
    return-object p0
.end method

.method public withEngineType(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->EngineType:Ljava/lang/Integer;

    .line 38
    return-object p0
.end method

.method public withEngineVersion(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->EngineVersion:Ljava/lang/String;

    .line 51
    return-object p0
.end method

.method public withProgramVersion(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/ClientInfo;->ProgramVersion:Ljava/lang/String;

    .line 25
    return-object p0
.end method
