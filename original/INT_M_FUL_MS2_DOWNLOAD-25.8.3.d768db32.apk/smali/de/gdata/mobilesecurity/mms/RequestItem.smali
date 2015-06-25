.class public Lde/gdata/mobilesecurity/mms/RequestItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACTIVATE:I = 0x14

.field public static final APP_BLOCK:I = 0x3d

.field public static final APP_DEBLOCK:I = 0x3f

.field public static final APP_LOCK:I = 0x3c

.field public static final APP_UNLOCK:I = 0x3e

.field public static final CALL_DIAL:I = 0x1e

.field public static final CALL_RECEIVE:I = 0x1f

.field public static final MESSAGE_RECEIVE:I = 0x29

.field public static final MESSAGE_SEND:I = 0x28

.field public static final MODIFY_ANSWER:I = 0x1a

.field public static final MODIFY_CUSTOM_QUESTION:I = 0x19

.field public static final MODIFY_EMAIL:I = 0x16

.field public static final MODIFY_PASSWORD:I = 0x15

.field public static final MODIFY_PHONE:I = 0x17

.field public static final MODIFY_QUESTION:I = 0x18

.field public static final NEW:I = 0x0

.field public static final REJECTED:I = 0x3

.field public static final REPLIED:I = 0x2

.field public static final SELECT:I = 0xa

.field public static final SENDING:I = 0x4

.field public static final SENT:I = 0x1

.field public static final TYPE_APP:I = 0x2

.field public static final TYPE_CONFIG:I = 0x1

.field public static final TYPE_PHONE:I = 0x4

.field public static final TYPE_PROFILE:I = 0x0

.field public static final TYPE_URL:I = 0x3

.field public static final URL_BLOCK:I = 0x33

.field public static final URL_PERMIT:I = 0x32


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/util/Date;

.field private f:Ljava/util/Date;

.field private g:Ljava/util/Date;

.field private h:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->a:Ljava/lang/String;

    .line 69
    iput p1, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->b:I

    .line 70
    iput-object p3, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->c:Ljava/lang/String;

    .line 71
    iput p4, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->d:I

    .line 72
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->d:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getQueued()Ljava/util/Date;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->e:Ljava/util/Date;

    return-object v0
.end method

.method public getReplied()Ljava/util/Date;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->g:Ljava/util/Date;

    return-object v0
.end method

.method public getSent()Ljava/util/Date;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->f:Ljava/util/Date;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->h:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->b:I

    return v0
.end method

.method public setQueued(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 106
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->e:Ljava/util/Date;

    .line 107
    return-void
.end method

.method public setReplied(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->g:Ljava/util/Date;

    .line 135
    return-void
.end method

.method public setSent(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->f:Ljava/util/Date;

    .line 121
    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lde/gdata/mobilesecurity/mms/RequestItem;->h:I

    .line 149
    return-void
.end method
