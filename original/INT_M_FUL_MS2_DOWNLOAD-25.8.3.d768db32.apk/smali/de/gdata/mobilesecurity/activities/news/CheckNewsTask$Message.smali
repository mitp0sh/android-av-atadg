.class public Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Ljava/util/Date;

.field f:Ljava/util/Date;

.field g:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getCreateDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->e:Ljava/util/Date;

    return-object v0
.end method

.method public getEndDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->g:Ljava/util/Date;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 57
    iget-wide v0, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->a:J

    return-wide v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getStartDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->f:Ljava/util/Date;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->c:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setCreateDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->e:Ljava/util/Date;

    .line 94
    return-void
.end method

.method public setEndDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->g:Ljava/util/Date;

    .line 110
    return-void
.end method

.method public setId(J)V
    .locals 1

    .prologue
    .line 61
    iput-wide p1, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->a:J

    .line 62
    return-void
.end method

.method public setLink(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->d:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setStartDate(Ljava/util/Date;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->f:Ljava/util/Date;

    .line 102
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/news/CheckNewsTask$Message;->b:Ljava/lang/String;

    .line 70
    return-void
.end method
