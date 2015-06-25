.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private PhoneType:Ljava/lang/Integer;

.field private RequireEncryption:Ljava/lang/Boolean;

.field private WlanEncryption:Ljava/lang/Integer;

.field private WlanPassword:Ljava/lang/String;

.field private WlanSsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public getPhoneType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->PhoneType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getRequireEncryption()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->RequireEncryption:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getWlanEncryption()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->WlanEncryption:Ljava/lang/Integer;

    return-object v0
.end method

.method public getWlanPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->WlanPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getWlanSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->WlanSsid:Ljava/lang/String;

    return-object v0
.end method

.method public setPhoneType(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->PhoneType:Ljava/lang/Integer;

    .line 24
    return-void
.end method

.method public setRequireEncryption(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->RequireEncryption:Ljava/lang/Boolean;

    .line 37
    return-void
.end method

.method public setWlanEncryption(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->WlanEncryption:Ljava/lang/Integer;

    .line 76
    return-void
.end method

.method public setWlanPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->WlanPassword:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setWlanSsid(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->WlanSsid:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public withPhoneType(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->PhoneType:Ljava/lang/Integer;

    .line 32
    return-object p0
.end method

.method public withRequireEncryption(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->RequireEncryption:Ljava/lang/Boolean;

    .line 45
    return-object p0
.end method

.method public withWlanEncryption(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->WlanEncryption:Ljava/lang/Integer;

    .line 84
    return-object p0
.end method

.method public withWlanPassword(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->WlanPassword:Ljava/lang/String;

    .line 71
    return-object p0
.end method

.method public withWlanSsid(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/policy/Reactions;->WlanSsid:Ljava/lang/String;

    .line 58
    return-object p0
.end method
