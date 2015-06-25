.class public Lde/gdata/mobilesecurity/privacy/adapter/SyncAdapter;
.super Landroid/content/AbstractThreadedSyncAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/accounts/AccountManager;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;Z)V

    .line 44
    iput-object p1, p0, Lde/gdata/mobilesecurity/privacy/adapter/SyncAdapter;->b:Landroid/content/Context;

    .line 45
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iput-object v0, p0, Lde/gdata/mobilesecurity/privacy/adapter/SyncAdapter;->a:Landroid/accounts/AccountManager;

    .line 46
    return-void
.end method


# virtual methods
.method public onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
    .locals 0

    .prologue
    .line 56
    .line 57
    return-void
.end method
