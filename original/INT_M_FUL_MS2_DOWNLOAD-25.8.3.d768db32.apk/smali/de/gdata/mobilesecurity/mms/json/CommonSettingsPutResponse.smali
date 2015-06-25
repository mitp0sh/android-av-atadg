.class public Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutResponse;
.super Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutResponse;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/PutResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public persist(Landroid/content/Context;Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;)V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutResponse;->a:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setMMSCommonSettingsETag(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public setETag(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/CommonSettingsPutResponse;->a:Ljava/lang/String;

    .line 25
    return-void
.end method
