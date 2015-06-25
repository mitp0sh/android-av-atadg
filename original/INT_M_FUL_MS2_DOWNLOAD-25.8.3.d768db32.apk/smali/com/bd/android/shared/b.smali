.class final enum Lcom/bd/android/shared/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bd/android/shared/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/bd/android/shared/b;

.field public static final enum b:Lcom/bd/android/shared/b;

.field public static final enum c:Lcom/bd/android/shared/b;

.field private static final synthetic d:[Lcom/bd/android/shared/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-instance v0, Lcom/bd/android/shared/b;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2}, Lcom/bd/android/shared/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bd/android/shared/b;->a:Lcom/bd/android/shared/b;

    new-instance v0, Lcom/bd/android/shared/b;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v3}, Lcom/bd/android/shared/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bd/android/shared/b;->b:Lcom/bd/android/shared/b;

    new-instance v0, Lcom/bd/android/shared/b;

    const-string v1, "ERROR_NO_STACKTRACE"

    invoke-direct {v0, v1, v4}, Lcom/bd/android/shared/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bd/android/shared/b;->c:Lcom/bd/android/shared/b;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bd/android/shared/b;

    sget-object v1, Lcom/bd/android/shared/b;->a:Lcom/bd/android/shared/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bd/android/shared/b;->b:Lcom/bd/android/shared/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bd/android/shared/b;->c:Lcom/bd/android/shared/b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bd/android/shared/b;->d:[Lcom/bd/android/shared/b;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bd/android/shared/b;
    .locals 1

    .prologue
    .line 38
    const-class v0, Lcom/bd/android/shared/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bd/android/shared/b;

    return-object v0
.end method

.method public static values()[Lcom/bd/android/shared/b;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/bd/android/shared/b;->d:[Lcom/bd/android/shared/b;

    invoke-virtual {v0}, [Lcom/bd/android/shared/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bd/android/shared/b;

    return-object v0
.end method
