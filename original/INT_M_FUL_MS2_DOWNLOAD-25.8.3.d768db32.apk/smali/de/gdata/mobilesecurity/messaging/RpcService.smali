.class public Lde/gdata/mobilesecurity/messaging/RpcService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private volatile a:Lde/gdata/mobilesecurity/util/RemotePreferences;

.field private final b:Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 29
    new-instance v0, Lde/gdata/mobilesecurity/messaging/a;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/messaging/a;-><init>(Lde/gdata/mobilesecurity/messaging/RpcService;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/messaging/RpcService;->b:Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;

    .line 138
    return-void
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/messaging/RpcService;)Lde/gdata/mobilesecurity/util/RemotePreferences;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/RpcService;->a:Lde/gdata/mobilesecurity/util/RemotePreferences;

    return-object v0
.end method

.method static synthetic a(Lde/gdata/mobilesecurity/messaging/RpcService;Lde/gdata/mobilesecurity/util/RemotePreferences;)Lde/gdata/mobilesecurity/util/RemotePreferences;
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lde/gdata/mobilesecurity/messaging/RpcService;->a:Lde/gdata/mobilesecurity/util/RemotePreferences;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lde/gdata/mobilesecurity/messaging/RpcService;->b:Lde/gdata/messaging/isfaserverdefinitions/IRpcService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 143
    new-instance v0, Lde/gdata/mobilesecurity/util/RemotePreferences;

    invoke-direct {v0, p0}, Lde/gdata/mobilesecurity/util/RemotePreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/messaging/RpcService;->a:Lde/gdata/mobilesecurity/util/RemotePreferences;

    .line 144
    return-void
.end method
