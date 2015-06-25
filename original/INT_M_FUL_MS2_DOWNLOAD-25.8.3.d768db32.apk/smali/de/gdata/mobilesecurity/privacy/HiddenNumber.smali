.class public Lde/gdata/mobilesecurity/privacy/HiddenNumber;
.super Lde/gdata/mobilesecurity/database/MapBackedData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x660ad050d4b9c7b3L


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>(Landroid/database/Cursor;)V

    .line 35
    const-string v0, "id"

    const-string v1, "id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>()V

    .line 39
    invoke-virtual {p0, p1}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->setNumber(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0, p2}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->setSupresCommunication(Z)V

    .line 41
    return-void
.end method


# virtual methods
.method protected getDataFields()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lde/gdata/mobilesecurity/privacy/HiddenNumberTable;

    invoke-direct {v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumberTable;-><init>()V

    invoke-virtual {v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumberTable;->getProjection()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()J
    .locals 2

    .prologue
    .line 44
    const-string v0, "id"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string v0, "number"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSuppresCommuncation()Z
    .locals 4

    .prologue
    .line 26
    const-string v0, "suppress_communcation"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setID(J)V
    .locals 3

    .prologue
    .line 48
    const-string v0, "id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    const-string v0, "number"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public setSupresCommunication(Z)V
    .locals 3

    .prologue
    .line 30
    const-string v2, "suppress_communcation"

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lde/gdata/mobilesecurity/privacy/HiddenNumber;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    return-void

    .line 30
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
