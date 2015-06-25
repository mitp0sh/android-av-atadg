.class public final enum Lde/gdata/mobilesecurity/database/Column$ColumnType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/gdata/mobilesecurity/database/Column$ColumnType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BLOB:Lde/gdata/mobilesecurity/database/Column$ColumnType;

.field public static final enum INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;

.field public static final enum TEXT:Lde/gdata/mobilesecurity/database/Column$ColumnType;

.field private static final synthetic a:[Lde/gdata/mobilesecurity/database/Column$ColumnType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lde/gdata/mobilesecurity/database/Column$ColumnType;

    const-string v1, "TEXT"

    invoke-direct {v0, v1, v2}, Lde/gdata/mobilesecurity/database/Column$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/database/Column$ColumnType;->TEXT:Lde/gdata/mobilesecurity/database/Column$ColumnType;

    new-instance v0, Lde/gdata/mobilesecurity/database/Column$ColumnType;

    const-string v1, "INTEGER"

    invoke-direct {v0, v1, v3}, Lde/gdata/mobilesecurity/database/Column$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;

    new-instance v0, Lde/gdata/mobilesecurity/database/Column$ColumnType;

    const-string v1, "BLOB"

    invoke-direct {v0, v1, v4}, Lde/gdata/mobilesecurity/database/Column$ColumnType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/gdata/mobilesecurity/database/Column$ColumnType;->BLOB:Lde/gdata/mobilesecurity/database/Column$ColumnType;

    .line 11
    const/4 v0, 0x3

    new-array v0, v0, [Lde/gdata/mobilesecurity/database/Column$ColumnType;

    sget-object v1, Lde/gdata/mobilesecurity/database/Column$ColumnType;->TEXT:Lde/gdata/mobilesecurity/database/Column$ColumnType;

    aput-object v1, v0, v2

    sget-object v1, Lde/gdata/mobilesecurity/database/Column$ColumnType;->INTEGER:Lde/gdata/mobilesecurity/database/Column$ColumnType;

    aput-object v1, v0, v3

    sget-object v1, Lde/gdata/mobilesecurity/database/Column$ColumnType;->BLOB:Lde/gdata/mobilesecurity/database/Column$ColumnType;

    aput-object v1, v0, v4

    sput-object v0, Lde/gdata/mobilesecurity/database/Column$ColumnType;->a:[Lde/gdata/mobilesecurity/database/Column$ColumnType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lde/gdata/mobilesecurity/database/Column$ColumnType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/database/Column$ColumnType;

    return-object v0
.end method

.method public static values()[Lde/gdata/mobilesecurity/database/Column$ColumnType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lde/gdata/mobilesecurity/database/Column$ColumnType;->a:[Lde/gdata/mobilesecurity/database/Column$ColumnType;

    invoke-virtual {v0}, [Lde/gdata/mobilesecurity/database/Column$ColumnType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/gdata/mobilesecurity/database/Column$ColumnType;

    return-object v0
.end method
