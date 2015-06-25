.class public Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static HIDDEN_NUMBER:Ljava/lang/String;

.field public static UNKNOWN_NAME:Ljava/lang/String;


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->HIDDEN_NUMBER:Ljava/lang/String;

    .line 12
    const-string v0, ""

    sput-object v0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->UNKNOWN_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->a:J

    .line 29
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->b:Ljava/lang/String;

    .line 30
    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->c:Ljava/lang/String;

    .line 31
    iput-object p5, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->d:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->e:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->a:J

    return-wide v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 46
    iput-wide p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->a:J

    .line 47
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->e:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->b:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->c:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setTimestamp(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/callfilter/BlockingItem;->d:Ljava/lang/String;

    .line 95
    return-void
.end method
