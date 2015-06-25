.class public Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;
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


# static fields
.field public static final SUBSCRIPTION_STATE_ERROR:I = 0x65

.field public static final SUBSCRIPTION_STATE_EXISTS:I = 0x6a

.field public static final SUBSCRIPTION_STATE_EXPIRED:I = 0x69

.field public static final SUBSCRIPTION_STATE_INTERNAL_SERVER_ERROR:I = 0x12c

.field public static final SUBSCRIPTION_STATE_LOGIN_NOT_FOUND:I = 0xc8

.field public static final SUBSCRIPTION_STATE_NETWORK_ERROR:I = -0x2

.field public static final SUBSCRIPTION_STATE_NOT_FOUND:I = 0x66

.field public static final SUBSCRIPTION_STATE_PENDING:I = 0x64

.field public static final SUBSCRIPTION_STATE_SUCCESS:I = 0x1

.field public static final SUBSCRIPTION_STATE_TERMINATED:I = 0x68

.field public static final SUBSCRIPTION_STATE_TERMINATION_PENDING:I = 0x67

.field public static final SUBSCRIPTION_STATE_UNKNOWN:I = 0x0

.field public static final SUBSCRIPTION_TASK_CANCEL:I = 0x1

.field public static final SUBSCRIPTION_TASK_CHECK:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 39
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->a:Landroid/content/Context;

    .line 40
    new-instance v0, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-direct {v0, p1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    .line 41
    return-void
.end method


# virtual methods
.method public addSubscriptionNotification(I)V
    .locals 6

    .prologue
    const v3, 0x7f0d03be

    .line 106
    new-instance v0, Lde/gdata/mobilesecurity/receiver/TaskIcon;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;-><init>(Landroid/content/Context;)V

    .line 108
    const/4 v2, -0x1

    .line 109
    const/4 v1, 0x0

    .line 112
    sparse-switch p1, :sswitch_data_0

    .line 142
    :cond_0
    :goto_0
    const v3, 0x7f02013a

    const v4, 0x7f02012f

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->addCustomNotification(IIIII)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->show(Ljava/lang/String;)Z

    .line 146
    :cond_1
    return-void

    .line 114
    :sswitch_0
    iget v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->c:I

    if-nez v3, :cond_2

    .line 115
    const/16 v1, 0xa

    .line 116
    const v2, 0x7f0d03bf

    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iget v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->c:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 119
    const/16 v1, 0xb

    .line 120
    const v2, 0x7f0d03bd

    .line 121
    goto :goto_0

    .line 129
    :sswitch_1
    const/16 v1, 0xc

    move v2, v3

    .line 132
    goto :goto_0

    .line 135
    :sswitch_2
    const/16 v1, 0xd

    move v2, v3

    .line 137
    goto :goto_0

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        -0x2 -> :sswitch_2
        0x1 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_1
    .end sparse-switch
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    aget-object v0, p1, v3

    .line 46
    aget-object v1, p1, v4

    .line 47
    aget-object v2, p1, v5

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->c:I

    .line 51
    new-array v2, v5, [Ljava/lang/String;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    invoke-static {v2}, Lde/gdata/mobilesecurity/util/MyUtil;->sanityCheck([Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 68
    :goto_0
    return-object v0

    .line 53
    :cond_0
    new-instance v2, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;

    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    new-instance v0, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;

    invoke-static {}, Lde/gdata/mobilesecurity/updateserverconnection/Update;->getUpdateComponentSig()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lde/gdata/mobilesecurity/updateserverconnection/conn/UpdateServerSession;->getServerStatus()I

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->c:I

    if-nez v0, :cond_1

    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->getSubscriptionState(Landroid/content/Context;)I

    move-result v0

    .line 68
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 62
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lde/gdata/mobilesecurity/updateserverconnection/UpdateServer;->cancelSubscription(Landroid/content/Context;)I

    move-result v0

    goto :goto_1

    .line 65
    :cond_2
    const/4 v0, -0x2

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 8

    .prologue
    const-wide/32 v4, 0x493e0

    const/4 v2, -0x2

    const/4 v1, 0x1

    .line 73
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 77
    invoke-virtual {p0, v2}, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->addSubscriptionNotification(I)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->c:I

    if-nez v0, :cond_4

    .line 82
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 83
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setIpxSubscriptionActive(Z)V

    .line 84
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->a:Landroid/content/Context;

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1e

    invoke-static {v6, v7}, Lde/gdata/mobilesecurity/util/MyUtil;->daysToMs(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setLoginLimit(Landroid/content/Context;Ljava/util/Date;)V

    .line 86
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->addSubscriptionNotification(I)V

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    .line 88
    new-instance v0, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;->enable(J)J

    goto :goto_0

    .line 90
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 91
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->addSubscriptionNotification(I)V

    goto :goto_0

    .line 93
    :cond_4
    iget v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->c:I

    if-ne v0, v1, :cond_0

    .line 94
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 95
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->b:Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/util/MobileSecurityPreferences;->setIpxSubscriptionActive(Z)V

    .line 97
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->addSubscriptionNotification(I)V

    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x67

    if-ne v0, v1, :cond_0

    .line 99
    new-instance v0, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;

    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lde/gdata/mobilesecurity/receiver/SubscriptionStateReceiver;->enable(J)J

    goto/16 :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 17
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/updateserverconnection/TaskSubscriptionData;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
