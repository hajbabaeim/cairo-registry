@builtins{range_check, ecdsa}

struct User:
    member name: felt
end

struct Registry:
    member users: User*
    member user_count: felt
end

func register_user{range_check_ptr : RangeCheckBuiltin*, output_ptr: OutputBuiltin*}(
    registry: Registry, user_name: felt
) -> (Registry, felt):
    # Check if the name is valid
    if user_name <= 0:
        return (registry, -1)  # Invalid name
    end

    # Add the new user
    let (new_user_ptr, user) = alloc()
    user.name = user_name
    registry.users = new_user_ptr
    registry.user_count += 1

    return (registry, 0)  # Successfully registered
end
