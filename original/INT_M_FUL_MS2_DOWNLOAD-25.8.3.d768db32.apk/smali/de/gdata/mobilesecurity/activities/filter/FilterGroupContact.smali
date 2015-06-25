.class public Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->a:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->b:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->c:Ljava/lang/String;

    .line 21
    iput p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->h:I

    .line 22
    iput p2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->g:I

    .line 23
    iput p6, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->f:I

    .line 24
    iput p7, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->e:I

    .line 25
    iput p8, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->d:I

    .line 26
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->c:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->a:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->a:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->b:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->c:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->c:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->a:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->b:Ljava/lang/String;

    .line 13
    iput p4, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->d:I

    .line 14
    iput p5, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->e:I

    .line 15
    iput p6, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->f:I

    .line 17
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 42
    const/4 v0, 0x0

    .line 44
    if-eqz p1, :cond_0

    instance-of v1, p1, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    if-eqz v1, :cond_0

    .line 45
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->b:Ljava/lang/String;

    check-cast p1, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;

    iget-object v1, p1, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 48
    :cond_0
    return v0
.end method

.method public getDisplayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->h:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->d:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->e:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->f:I

    return v0
.end method

.method public setmDisplayNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->a:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setmId(I)V
    .locals 0

    .prologue
    .line 56
    iput p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->h:I

    .line 57
    return-void
.end method

.method public setmMessageType(I)V
    .locals 0

    .prologue
    .line 88
    iput p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->d:I

    .line 89
    return-void
.end method

.method public setmName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->c:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setmNumber(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->b:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setmPermissions(I)V
    .locals 0

    .prologue
    .line 96
    iput p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->e:I

    .line 97
    return-void
.end method

.method public setmStatus(I)V
    .locals 0

    .prologue
    .line 104
    iput p1, p0, Lde/gdata/mobilesecurity/activities/filter/FilterGroupContact;->f:I

    .line 105
    return-void
.end method
