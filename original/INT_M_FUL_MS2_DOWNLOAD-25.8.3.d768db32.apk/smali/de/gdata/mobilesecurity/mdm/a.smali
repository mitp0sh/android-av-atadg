.class final enum Lde/gdata/mobilesecurity/mdm/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lde/gdata/mobilesecurity/mdm/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lde/gdata/mobilesecurity/mdm/a;

.field private static final synthetic c:[Lde/gdata/mobilesecurity/mdm/a;


# instance fields
.field b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    new-instance v0, Lde/gdata/mobilesecurity/mdm/a;

    const-string v1, "check_su_binary"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/system/xbin/which"

    aput-object v3, v2, v4

    const-string v3, "su"

    aput-object v3, v2, v5

    invoke-direct {v0, v1, v4, v2}, Lde/gdata/mobilesecurity/mdm/a;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    sput-object v0, Lde/gdata/mobilesecurity/mdm/a;->a:Lde/gdata/mobilesecurity/mdm/a;

    .line 98
    new-array v0, v5, [Lde/gdata/mobilesecurity/mdm/a;

    sget-object v1, Lde/gdata/mobilesecurity/mdm/a;->a:Lde/gdata/mobilesecurity/mdm/a;

    aput-object v1, v0, v4

    sput-object v0, Lde/gdata/mobilesecurity/mdm/a;->c:[Lde/gdata/mobilesecurity/mdm/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput-object p3, p0, Lde/gdata/mobilesecurity/mdm/a;->b:[Ljava/lang/String;

    .line 105
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/gdata/mobilesecurity/mdm/a;
    .locals 1

    .prologue
    .line 98
    const-class v0, Lde/gdata/mobilesecurity/mdm/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lde/gdata/mobilesecurity/mdm/a;

    return-object v0
.end method

.method public static values()[Lde/gdata/mobilesecurity/mdm/a;
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lde/gdata/mobilesecurity/mdm/a;->c:[Lde/gdata/mobilesecurity/mdm/a;

    invoke-virtual {v0}, [Lde/gdata/mobilesecurity/mdm/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/gdata/mobilesecurity/mdm/a;

    return-object v0
.end method
