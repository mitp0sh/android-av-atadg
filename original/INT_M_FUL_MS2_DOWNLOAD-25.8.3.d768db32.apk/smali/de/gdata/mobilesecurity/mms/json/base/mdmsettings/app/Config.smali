.class public Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private Enabled:Ljava/lang/Boolean;

.field private Mode:Ljava/lang/Integer;

.field private Password:Ljava/lang/String;

.field private PasswordRecoveryMail:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->Enabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->Mode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->Password:Ljava/lang/String;

    return-object v0
.end method

.method public getPasswordRecoveryMail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->PasswordRecoveryMail:Ljava/lang/String;

    return-object v0
.end method

.method public setEnabled(Ljava/lang/Boolean;)V
    .locals 0

    .prologue
    .line 15
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->Enabled:Ljava/lang/Boolean;

    .line 16
    return-void
.end method

.method public setMode(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 41
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->Mode:Ljava/lang/Integer;

    .line 42
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->Password:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setPasswordRecoveryMail(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->PasswordRecoveryMail:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public withEnabled(Ljava/lang/Boolean;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->Enabled:Ljava/lang/Boolean;

    .line 24
    return-object p0
.end method

.method public withMode(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->Mode:Ljava/lang/Integer;

    .line 50
    return-object p0
.end method

.method public withPassword(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->Password:Ljava/lang/String;

    .line 37
    return-object p0
.end method

.method public withPasswordRecoveryMail(Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/base/mdmsettings/app/Config;->PasswordRecoveryMail:Ljava/lang/String;

    .line 63
    return-object p0
.end method
