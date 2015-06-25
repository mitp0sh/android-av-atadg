.class public Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lde/gdata/mobilesecurity/receiver/TaskIcon;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/receiver/TaskIcon;IIII)V
    .locals 1

    .prologue
    .line 107
    iput-object p1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->a:Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->f:Ljava/lang/String;

    .line 108
    iput p2, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->b:I

    .line 109
    iput p3, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->c:I

    .line 110
    iput p4, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->d:I

    .line 111
    iput p5, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->e:I

    .line 112
    return-void
.end method

.method public constructor <init>(Lde/gdata/mobilesecurity/receiver/TaskIcon;ILjava/lang/String;II)V
    .locals 1

    .prologue
    .line 114
    iput-object p1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->a:Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->f:Ljava/lang/String;

    .line 115
    iput p2, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->b:I

    .line 116
    iput-object p3, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->f:Ljava/lang/String;

    .line 117
    iput p4, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->d:I

    .line 118
    iput p5, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->e:I

    .line 119
    return-void
.end method


# virtual methods
.method public getIconResouceId()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->d:I

    return v0
.end method

.method public getNotificationId()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->b:I

    return v0
.end method

.method public getNotificationText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->f:Ljava/lang/String;

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_0
    iget v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->c:I

    sget v1, Lde/gdata/mobilesecurity/receiver/TaskIcon;->NOTIFICATION_TEXT_NEWS_COUNT:I

    if-ne v0, v1, :cond_1

    .line 137
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->a:Lde/gdata/mobilesecurity/receiver/TaskIcon;

    iget-object v1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->a:Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-static {v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->a(Lde/gdata/mobilesecurity/receiver/TaskIcon;)Lde/gdata/mobilesecurity/util/BasePreferences;

    move-result-object v1

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/util/BasePreferences;->getNewsUnread()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->getUnreadNewsTickerText(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 139
    :cond_1
    iget-object v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->a:Lde/gdata/mobilesecurity/receiver/TaskIcon;

    invoke-static {v0}, Lde/gdata/mobilesecurity/receiver/TaskIcon;->b(Lde/gdata/mobilesecurity/receiver/TaskIcon;)Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->c:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getTickerIconResouceId()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lde/gdata/mobilesecurity/receiver/TaskIcon$NotificationEntry;->e:I

    return v0
.end method
