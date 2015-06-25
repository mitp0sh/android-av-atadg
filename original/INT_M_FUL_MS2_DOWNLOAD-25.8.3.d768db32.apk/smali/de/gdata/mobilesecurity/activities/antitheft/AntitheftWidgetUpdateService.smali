.class public Lde/gdata/mobilesecurity/activities/antitheft/AntitheftWidgetUpdateService;
.super Landroid/app/Service;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 17
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/antitheft/AntitheftWidgetUpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/antitheft/AntitheftWidgetProvider;->updateAppWidgets(Landroid/content/Context;)V

    .line 18
    return-void
.end method
