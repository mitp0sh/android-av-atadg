.class public abstract enum Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum EXACT_GROUPING:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum POSSIBLE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum STRICT_GROUPING:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field public static final enum VALID:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

.field private static final synthetic a:[Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 445
    new-instance v0, Lcom/google/i18n/phonenumbers/h;

    const-string v1, "POSSIBLE"

    invoke-direct {v0, v1, v2}, Lcom/google/i18n/phonenumbers/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 457
    new-instance v0, Lcom/google/i18n/phonenumbers/i;

    const-string v1, "VALID"

    invoke-direct {v0, v1, v3}, Lcom/google/i18n/phonenumbers/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 479
    new-instance v0, Lcom/google/i18n/phonenumbers/j;

    const-string v1, "STRICT_GROUPING"

    invoke-direct {v0, v1, v4}, Lcom/google/i18n/phonenumbers/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->STRICT_GROUPING:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 510
    new-instance v0, Lcom/google/i18n/phonenumbers/l;

    const-string v1, "EXACT_GROUPING"

    invoke-direct {v0, v1, v5}, Lcom/google/i18n/phonenumbers/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->EXACT_GROUPING:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    .line 440
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->POSSIBLE:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->VALID:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->STRICT_GROUPING:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->EXACT_GROUPING:Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->a:[Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

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
    .line 440
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/i18n/phonenumbers/e;)V
    .locals 0

    .prologue
    .line 440
    invoke-direct {p0, p1, p2}, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .locals 1

    .prologue
    .line 440
    const-class v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    return-object v0
.end method

.method public static values()[Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;
    .locals 1

    .prologue
    .line 440
    sget-object v0, Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->a:[Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    invoke-virtual {v0}, [Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/i18n/phonenumbers/PhoneNumberUtil$Leniency;

    return-object v0
.end method


# virtual methods
.method abstract a(Lcom/google/i18n/phonenumbers/Phonenumber$PhoneNumber;Ljava/lang/String;Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)Z
.end method
