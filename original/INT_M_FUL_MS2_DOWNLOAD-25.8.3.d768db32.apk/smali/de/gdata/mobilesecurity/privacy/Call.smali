.class public Lde/gdata/mobilesecurity/privacy/Call;
.super Lde/gdata/mobilesecurity/database/MapBackedData;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x53d5b9339b401620L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lde/gdata/mobilesecurity/database/MapBackedData;-><init>(Landroid/database/Cursor;)V

    .line 20
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 45
    const-string v0, "number"

    invoke-virtual {p0, v0, p1}, Lde/gdata/mobilesecurity/privacy/Call;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    return-void
.end method

.method protected getDataFields()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 28
    new-instance v0, Ljava/util/LinkedList;

    new-instance v1, Lde/gdata/mobilesecurity/privacy/CallsTable;

    invoke-direct {v1}, Lde/gdata/mobilesecurity/privacy/CallsTable;-><init>()V

    invoke-virtual {v1}, Lde/gdata/mobilesecurity/privacy/CallsTable;->getProjection()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 29
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 30
    const-string v1, "is_read"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 32
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 61
    const-string v0, "date"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/Call;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, "number"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/Call;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 65
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lde/gdata/mobilesecurity/privacy/Call;->getInt(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setDate(J)V
    .locals 3

    .prologue
    .line 49
    const-string v0, "date"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/Call;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 50
    return-void
.end method

.method public setType(I)V
    .locals 2

    .prologue
    .line 53
    const-string v0, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lde/gdata/mobilesecurity/privacy/Call;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 37
    invoke-super {p0}, Lde/gdata/mobilesecurity/database/MapBackedData;->toContentValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_0

    .line 39
    const-string v1, "is_read"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 41
    :cond_0
    return-object v0
.end method
