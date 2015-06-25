.class public Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;->a:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 13

    .prologue
    .line 33
    const/4 v0, 0x0

    aget-object v2, p1, v0

    .line 34
    const/4 v0, 0x1

    aget-object v3, p1, v0

    .line 35
    const/4 v0, 0x2

    aget-object v4, p1, v0

    .line 36
    const/4 v0, 0x3

    aget-object v5, p1, v0

    .line 37
    const/4 v0, 0x4

    aget-object v9, p1, v0

    .line 38
    const/4 v0, 0x5

    aget-object v10, p1, v0

    .line 39
    const/4 v0, 0x6

    aget-object v7, p1, v0

    .line 40
    const/4 v0, 0x7

    aget-object v8, p1, v0

    .line 41
    array-length v0, p1

    const/16 v1, 0x8

    if-le v0, v1, :cond_0

    const/16 v0, 0x8

    aget-object v6, p1, v0

    .line 43
    :goto_0
    new-instance v12, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;->a:Landroid/content/Context;

    invoke-direct {v12, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v12}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->isPremiumRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    const/4 v0, 0x0

    .line 75
    :goto_1
    return-object v0

    .line 41
    :cond_0
    const-string v6, ""

    goto :goto_0

    .line 50
    :cond_1
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;->a:Landroid/content/Context;

    invoke-direct {v0, v1, v7, v8}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance v1, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->getUpdateComponentSig()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;-><init>(Ljava/lang/String;)V

    .line 52
    iget-object v11, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;->a:Landroid/content/Context;

    invoke-virtual {v0, v11, v1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->getVersion(Landroid/content/Context;Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 53
    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->confirm(Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;)V

    .line 55
    invoke-virtual {v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    .line 56
    const/16 v1, 0x1647

    if-ne v0, v1, :cond_3

    .line 59
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;->a:Landroid/content/Context;

    const-string v11, ""

    invoke-virtual/range {v0 .. v11}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/structs/AuthStruct;->getStatuscode()I

    move-result v0

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;->a:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->registrationPerformed()V

    .line 74
    :cond_2
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setPremiumRegistered(Z)V

    .line 75
    const/4 v0, 0x0

    goto :goto_1

    .line 68
    :cond_3
    const/16 v1, 0x1651

    if-eq v0, v1, :cond_4

    if-nez v0, :cond_5

    .line 69
    :cond_4
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;->a:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/util/Trial;->registrationPerformed()V

    goto :goto_2

    .line 70
    :cond_5
    const/16 v1, 0x1653

    if-ne v0, v1, :cond_2

    .line 71
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;->a:Landroid/content/Context;

    invoke-static {v0}, Lde/gdata/mobilesecurity/util/Trial;->getI(Landroid/content/Context;)Lde/gdata/mobilesecurity/util/Trial;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/Trial;->setTrialState(I)V

    goto :goto_2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskDeferredRegister;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
