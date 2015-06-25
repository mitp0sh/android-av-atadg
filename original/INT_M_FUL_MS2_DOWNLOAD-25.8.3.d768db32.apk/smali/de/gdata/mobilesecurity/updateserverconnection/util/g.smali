.class Lde/gdata/mobilesecurity/updateserverconnection/util/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:[I

.field final synthetic b:Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;


# direct methods
.method public constructor <init>(Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;[II)V
    .locals 6

    .prologue
    const/16 v5, 0x100

    const/4 v0, 0x0

    .line 18
    iput-object p1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->b:Lde/gdata/mobilesecurity/updateserverconnection/util/RC4Coding;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/16 v1, 0x102

    new-array v1, v1, [I

    iput-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    move v1, v0

    .line 23
    :goto_0
    if-ge v1, v5, :cond_0

    .line 24
    iget-object v2, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    aput v1, v2, v1

    .line 23
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 26
    :cond_0
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    aput v0, v1, v5

    .line 27
    iget-object v1, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    const/16 v2, 0x101

    aput v0, v1, v2

    move v1, v0

    move v2, v0

    .line 30
    :goto_1
    if-ge v0, v5, :cond_1

    .line 31
    aget v3, p2, v2

    iget-object v4, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    .line 32
    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    invoke-direct {p0, v3, v0, v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a([III)V

    .line 33
    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, p3

    .line 30
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 35
    :cond_1
    return-void
.end method

.method private a([III)V
    .locals 2

    .prologue
    .line 38
    aget v0, p1, p2

    .line 39
    aget v1, p1, p3

    aput v1, p1, p2

    .line 40
    aput v0, p1, p3

    .line 41
    return-void
.end method


# virtual methods
.method public a([II)V
    .locals 9

    .prologue
    const/16 v8, 0x101

    const/16 v7, 0x100

    .line 48
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    aget v2, v0, v7

    .line 49
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    aget v1, v0, v8

    .line 51
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    and-int/lit16 v2, v2, 0xff

    .line 54
    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    aget v3, v3, v2

    add-int/2addr v1, v3

    .line 55
    and-int/lit16 v1, v1, 0xff

    .line 56
    iget-object v3, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    invoke-direct {p0, v3, v2, v1}, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a([III)V

    .line 57
    aget v3, p1, v0

    iget-object v4, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    iget-object v5, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    aget v5, v5, v2

    iget-object v6, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    aget v6, v6, v1

    add-int/2addr v5, v6

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    xor-int/2addr v3, v4

    aput v3, p1, v0

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    aput v2, v0, v7

    .line 60
    iget-object v0, p0, Lde/gdata/mobilesecurity/updateserverconnection/util/g;->a:[I

    aput v1, v0, v8

    .line 61
    return-void
.end method
