.class public final enum Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DATA_FILE:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

.field public static final enum DATA_STRING:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

.field private static final synthetic a:[Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 113
    new-instance v0, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    const-string v1, "DATA_STRING"

    invoke-direct {v0, v1, v2}, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_STRING:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 114
    new-instance v0, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    const-string v1, "DATA_FILE"

    invoke-direct {v0, v1, v3}, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_FILE:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    .line 111
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_STRING:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->DATA_FILE:Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->a:[Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

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
    .line 111
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;
    .locals 1

    .prologue
    .line 111
    const-class v0, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->a:[Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    invoke-virtual {v0}, [Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bd/android/shared/HTTPManager2$DATA_TYPE;

    return-object v0
.end method
