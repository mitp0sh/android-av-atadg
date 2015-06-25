.class public Lde/gdata/mobilesecurity/database/core/Type;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static BLOB:Ljava/lang/String;

.field public static BOOLEAN:Ljava/lang/String;

.field public static INTEGER:Ljava/lang/String;

.field public static REAL:Ljava/lang/String;

.field public static TEXT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const-string v0, "integer"

    sput-object v0, Lde/gdata/mobilesecurity/database/core/Type;->INTEGER:Ljava/lang/String;

    .line 8
    const-string v0, "text"

    sput-object v0, Lde/gdata/mobilesecurity/database/core/Type;->TEXT:Ljava/lang/String;

    .line 9
    const-string v0, "blob"

    sput-object v0, Lde/gdata/mobilesecurity/database/core/Type;->BLOB:Ljava/lang/String;

    .line 10
    const-string v0, "real"

    sput-object v0, Lde/gdata/mobilesecurity/database/core/Type;->REAL:Ljava/lang/String;

    .line 11
    const-string v0, "boolean"

    sput-object v0, Lde/gdata/mobilesecurity/database/core/Type;->BOOLEAN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
