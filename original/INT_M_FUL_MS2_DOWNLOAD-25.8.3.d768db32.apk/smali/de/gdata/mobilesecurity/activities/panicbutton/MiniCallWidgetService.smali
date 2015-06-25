.class public Lde/gdata/mobilesecurity/activities/panicbutton/MiniCallWidgetService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lde/gdata/mobilesecurity/activities/panicbutton/MiniCallWidgetService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lde/gdata/mobilesecurity/activities/panicbutton/MiniCallWidgetService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 24
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/MiniCallWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProvider;->updateAppWidgets(Landroid/content/Context;)V

    .line 25
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/MiniCallWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderSmall;->updateAppWidgets(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lde/gdata/mobilesecurity/activities/panicbutton/MiniCallWidgetService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/gdata/mobilesecurity/activities/panicbutton/PanicButtonProviderBig;->updateAppWidgets(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 33
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 37
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    .line 38
    return-void
.end method
