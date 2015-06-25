.class public Lde/gdata/mobilesecurity/util/HashResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HASH_SIZE_FUL:I = 0x80

.field public static final HASH_SIZE_SMALL:I = 0x40


# instance fields
.field private a:[J

.field private b:Z


# direct methods
.method public constructor <init>(J)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/HashResult;->a:[J

    .line 9
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/util/HashResult;->b:Z

    .line 21
    const/4 v0, 0x1

    new-array v0, v0, [J

    aput-wide p1, v0, v1

    iput-object v0, p0, Lde/gdata/mobilesecurity/util/HashResult;->a:[J

    .line 22
    return-void
.end method

.method public constructor <init>([J)V
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v2, 0x0

    iput-object v2, p0, Lde/gdata/mobilesecurity/util/HashResult;->a:[J

    .line 9
    iput-boolean v1, p0, Lde/gdata/mobilesecurity/util/HashResult;->b:Z

    .line 12
    array-length v2, p1

    if-le v2, v3, :cond_1

    .line 13
    new-array v2, v3, [J

    aget-wide v4, p1, v1

    aput-wide v4, v2, v1

    aget-wide v4, p1, v0

    aput-wide v4, v2, v0

    iput-object v2, p0, Lde/gdata/mobilesecurity/util/HashResult;->a:[J

    .line 14
    aget-wide v2, p1, v3

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lde/gdata/mobilesecurity/util/HashResult;->b:Z

    .line 18
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 14
    goto :goto_0

    .line 16
    :cond_1
    iput-object p1, p0, Lde/gdata/mobilesecurity/util/HashResult;->a:[J

    goto :goto_1
.end method

.method private a(Ljava/lang/Long;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 38
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 43
    :goto_0
    return-object v0

    .line 42
    :cond_0
    const-string v1, "0000000000000000"

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    rsub-int/lit8 v4, v4, 0x10

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getFirstLong()J
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/HashResult;->a:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public isArchive()Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lde/gdata/mobilesecurity/util/HashResult;->b:Z

    return v0
.end method

.method public isEqual(Lde/gdata/mobilesecurity/util/HashResult;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lde/gdata/mobilesecurity/util/HashResult;->a:[J

    array-length v0, v0

    iget-object v2, p1, Lde/gdata/mobilesecurity/util/HashResult;->a:[J

    array-length v2, v2

    if-eq v0, v2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    .line 53
    :goto_1
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/HashResult;->a:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 54
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/HashResult;->a:[J

    aget-wide v2, v2, v0

    iget-object v4, p1, Lde/gdata/mobilesecurity/util/HashResult;->a:[J

    aget-wide v4, v4, v0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 53
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/HashResult;->a:[J

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 32
    iget-object v2, p0, Lde/gdata/mobilesecurity/util/HashResult;->a:[J

    aget-wide v2, v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {p0, v2}, Lde/gdata/mobilesecurity/util/HashResult;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
