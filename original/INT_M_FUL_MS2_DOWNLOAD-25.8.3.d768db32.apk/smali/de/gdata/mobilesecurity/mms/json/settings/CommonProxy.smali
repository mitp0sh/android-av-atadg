.class public Lde/gdata/mobilesecurity/mms/json/settings/CommonProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p2, p0, Lde/gdata/mobilesecurity/mms/json/settings/CommonProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;

    .line 15
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/json/settings/CommonProxy;->b:Landroid/content/Context;

    .line 16
    return-void
.end method

.method public static read(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public static readCurrent(Landroid/content/Context;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance v1, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSyncInterval()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->withSyncInterval(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;

    move-result-object v1

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->getSyncIntervalWlan()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->withSyncIntervalWlan(Ljava/lang/Integer;)Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;

    move-result-object v0

    .line 51
    return-object v0
.end method


# virtual methods
.method public write(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public writeCurrent(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/json/settings/CommonProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;

    if-nez v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 60
    :cond_0
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 62
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/CommonProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->getSyncInterval()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSyncInterval(I)V

    .line 63
    iget-object v1, p0, Lde/gdata/mobilesecurity/mms/json/settings/CommonProxy;->a:Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/mms/json/base/commonsettings/item/Common;->getSyncIntervalWlan()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setSyncIntervalWlan(I)V

    goto :goto_0
.end method
